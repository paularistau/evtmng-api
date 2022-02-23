<?php

function event_data($post) {
  $post_meta = get_post_meta($post->ID);
  $post_status = get_post_meta($post->post_status);
  $src = wp_get_attachment_image_src($post_meta['img'][0], 'large')[0];
  $user = get_userdata($post->post_author);

  return [
    'id' => $post->ID,
    'author' => $user->user_login,
    "name" => $post_meta['name'][0],
    'src' => $src,
    "type" => $post_meta['type'][0],
    "description" => $post_meta['description'][0],
    "start_date" => $post_meta['start_date'][0],
    "end_date" => $post_meta['end_date'][0],
    "status" => $post_meta['status'][0],
  ];
}

function api_event_get($request) {
  $post_id = $request['id'];
  $post = get_post($post_id);

  if (!isset($post) || empty($post_id)) {
    $response = new WP_Error('error', 'Event not found.', ['status' => 404]);
    return rest_ensure_response($response);
  }


  $event = event_data($post);

  $response = [
    'event' => $event,
  ];

  return rest_ensure_response($response);
}

function register_api_event_get() {
  register_rest_route('api', '/event/(?P<id>[0-9]+)', [
    'methods' => WP_REST_Server::READABLE,
    'callback' => 'api_event_get',
  ]);
}
add_action('rest_api_init', 'register_api_event_get');

function api_events_get($request) {
  $_user = sanitize_text_field($request['_user']) ?: 0;

  if (!is_numeric($_user)) {
    $user = get_user_by('login', $_user);
    $_user = $user->ID;
  }

  $args = [
    'post_type' => 'event',
    'author' => $_user,
  ];

  $query = new WP_Query($args);
  $posts = $query->posts;

  $events = [];
  if ($posts) {
    foreach ($posts as $post) {
      $events[] = event_data($post);
    }
  }

  return rest_ensure_response($events);
}

function register_api_events_get() {
  register_rest_route('api', '/event', [
    'methods' => WP_REST_Server::READABLE,
    'callback' => 'api_events_get',
  ]);
}
add_action('rest_api_init', 'register_api_events_get');

?>