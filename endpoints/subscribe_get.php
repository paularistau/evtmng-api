<?php

function subscribe_data($post) {
  $post_meta = get_post_meta($post->ID);
  $user = get_userdata($post->post_author);

  return [
    'id' => $post->ID,
    'event_id' => $post_meta['event_id'][0],
    'author' => $user->user_login,
    "name" => $post_meta['name'][0],
    'src' => $post_meta['src'][0],
    "type" => $post_meta['type'][0],
    "description" => $post_meta['description'][0],
    "start_date" => $post_meta['start_date'][0],
    "end_date" => $post_meta['end_date'][0],
    'status' => $status,
  ];
}

function api_subscribe_get($request) {
  $post_id = $request['id'];
  $post = get_post($post_id);

  if (!isset($post) || empty($post_id)) {
    $response = new WP_Error('error', 'Event not found.', ['status' => 404]);
    return rest_ensure_response($response);
  }


  $subscribe = subscribe_data($post);

  $response = [
    'subscribe' => $subscribe,
  ];

  return rest_ensure_response($response);
}

function register_api_subscribe_get() {
  register_rest_route('api', '/subscribe/(?P<id>[0-9]+)', [
    'methods' => WP_REST_Server::READABLE,
    'callback' => 'api_subscribe_get',
  ]);
}
add_action('rest_api_init', 'register_api_subscribe_get');

function api_subscribes_get($request) {
  $user = get_userdata($post->post_author);
  $_user = $user->ID;

  $args = [
    'post_type' => 'subscribe',
    'author' => $_user,
  ];

  $query = new WP_Query($args);
  $posts = $query->posts;

  $my_events = [];
  if ($posts) {
    foreach ($posts as $post) {
      $subscribes[] = subscribe_data($post);
    }
  }

  return rest_ensure_response($subscribes);
}

function register_api_subscribes_get() {
  register_rest_route('api', '/subscribes', [
    'methods' => WP_REST_Server::READABLE,
    'callback' => 'api_subscribes_get',
  ]);
}
add_action('rest_api_init', 'register_api_subscribes_get');

?>
