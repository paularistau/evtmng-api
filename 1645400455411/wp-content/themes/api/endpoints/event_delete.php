<?php

function api_event_delete($request) {
  $slug = $request['slug'];

  $event_id = get_event_id_by_slug($slug);
  $user = wp_get_current_user();

  $author_id = (int) get_post_field('event_author', $event_id);
  $user_id = (int) $user->ID;

  if($user_id === $author_id) {

    $images = get_attached_media('image', $event_id);
    if($images) {
      foreach($images as $key => $value) {
        wp_delete_attachment($value->ID, true);
      }
    }

    $response = wp_delete_post($event_id, true);

  } else {
    $response = new WP_Error('permission', 'User unauthorized.', array('status' => 401));
  }
  return rest_ensure_response($response);
}

function register_api_event_delete() {
  register_rest_route('api', '/event/(?P<slug>[-\w]+)', array(
    array(
      'methods' => WP_REST_Server::DELETABLE,
      'callback' => 'api_event_delete',
    ),
  ));
}

add_action('rest_api_init', 'register_api_event_delete');


?>