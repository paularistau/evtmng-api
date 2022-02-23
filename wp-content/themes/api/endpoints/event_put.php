<?php

function api_event_delete($request) {
  $post_id = $request['id'];
  $user = wp_get_current_user();
  $post = get_post($post_id);
  $author_id = (int) $post->post_author;
  $user_id = (int) $user->ID;
  
  $response = array(
    'ID' => $post_id,
    'deleted' => 1,
  );
  wp_update_post($response);

  return rest_ensure_response('Event deleted.');
}

function register_api_event_delete() {
  register_rest_route('api', '/event/(?P<id>[0-9]+)', [
    'methods' => WP_REST_Server::EDITABLE,
    'callback' => 'api_event_delete',
  ]);
}
add_action('rest_api_init', 'register_api_event_delete');

?>