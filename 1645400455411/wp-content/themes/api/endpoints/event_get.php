<?php

function event_scheme($slug) {
  $post_id = get_event_id_by_slug($slug);
  if($post_id) {
    $post_meta = get_post_meta($post_id);

    $images = get_attached_media('image', $post_id);
    $images_array = null;

    if($images) {
      $images_array = array();
      foreach($images as $key => $value) {
        $images_array[] = array(
          'titulo' => $value->post_name,
          'src' => $value->guid,
        );
      }
    }

    $response = array(
      "id" => $slug, 
      "pictures" => $images_array,
      "name" => $post_meta['name'][0],
      "type" => $post_meta['type'][0],
      "description" => $post_meta['description'][0],
      "start_date" => $post_meta['start_date'][0],
      "end_date" => $post_meta['end_date'][0],
      'status' => $status,
      "user_id" => $post_meta['user_id'][0],
    );

  } else {
    $response = new WP_Error('notexist', 'Product not found.', array('status' => 404));
  }
  return $response;
}

function api_event_get($request) {
  $response = event_scheme($request["slug"]);
  return rest_ensure_response($response);
}

function register_api_event_get() {
  register_rest_route('api', '/event/(?P<slug>[-\w]+)', array(
    array(
      'methods' => WP_REST_Server::READABLE,
      'callback' => 'api_event_get',
    ),
  ));
}
add_action('rest_api_init', 'register_api_event_get');

// API events
function api_events_get_user($request) {

  $q = sanitize_text_field($request['q']) ?: '';
  $_page = sanitize_text_field($request['_page']) ?: 0;
  $_limit = sanitize_text_field($request['_limit']) ?: 9;
  $user_id = sanitize_text_field($request['user_id']);

  $user_id_query = null;
  if($user_id) {
    $user_id_query = array(
      'key' => 'user_id',
      'value' => $user_id,
      'compare' => '='
    );
  }

  $query = array(
    'post_type' => 'event',
    'posts_per_page' => $_limit,
    'paged' => $_page,
    's' => $q,
    'meta_query' => array(
      $user_id_query,
    )
  );

  $loop = new WP_Query($query);
  $posts = $loop->posts;
  $total = $loop->found_posts;

  $events = array();
  foreach ($posts as $key => $value) {
    $events[] = event_scheme($value->post_name);
  }

  $response = rest_ensure_response($events);

  return $response;
}

function api_events_get($request) {

  $q = sanitize_text_field($request['q']) ?: '';
  $_page = sanitize_text_field($request['_page']) ?: 0;
  $_limit = sanitize_text_field($request['_limit']) ?: 9;

  $query = array(
    'post_type' => 'event',
    'posts_per_page' => $_limit,
    'paged' => $_page,
    's' => $q,
  );

  $loop = new WP_Query($query);
  $posts = $loop->posts;
  $total = $loop->found_posts;

  $events = array();
  foreach ($posts as $key => $value) {
    $events[] = event_scheme($value->post_name);
  }

  $response = rest_ensure_response($events);

  return $response;
}

function register_api_events_get_user() {
  register_rest_route('api', '/event', array(
    array(
      'methods' => WP_REST_Server::READABLE,
      'callback' => 'api_events_get_user',
    ),
  ));
}

function register_api_events_get() {
  register_rest_route('api', '/event', array(
    array(
      'methods' => WP_REST_Server::READABLE,
      'callback' => 'api_events_get',
    ),
  ));
}

add_action('rest_api_init', 'register_api_events_get_user');
add_action('rest_api_init', 'register_api_events_get');


?>