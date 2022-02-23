<?php

function api_subscribe_post($request) {
  $user = wp_get_current_user();
  $user_id = $user->ID;

  if ($user_id === 0) {
    $response = new WP_Error('error', 'User unauthorized.', ['status' => 401]);
    return rest_ensure_response($response);
  }

  $name = sanitize_text_field($request['name']);
  $event_id = sanitize_text_field($request['event_id']);
  $type = sanitize_text_field($request['type']);
  $description = sanitize_text_field($request['description']);
  $start_date = sanitize_text_field($request['start_date']);
  $end_date = sanitize_text_field($request['end_date']);
  $status = sanitize_text_field($request['status']);
  $src = sanitize_text_field($request['src']);



//   if (empty($name) || empty($type) || empty($description) || empty($src)) {
//     $response = new WP_Error('error', 'Dados incompletos.', ['status' => 422]);
//     return rest_ensure_response($response);
//   }

  $response = array(
    'post_author' => $user_id,
    'post_type' => 'subscribe',
    'post_status' => 'publish',
    'post_title' => $name,
    'post_content' => $name,
    'meta_input' => array(
      'name' => $name,
      'event_id' => $event_id,
      'type' => $type,
      'start_date' => $start_date,
      'end_date' => $end_date,
      'status' => $status,
      'description' => $description,
      'src' => $src,
    ),
  );

  $post_id = wp_insert_post($response);

  require_once ABSPATH . 'wp-admin/includes/image.php';
  require_once ABSPATH . 'wp-admin/includes/file.php';
  require_once ABSPATH . 'wp-admin/includes/media.php';

  $subscribe_id = media_handle_upload('img', $post_id);
  update_post_meta($post_id, 'img', $subscribe_id);

  return rest_ensure_response($response);
}

function register_api_subscribe_post() {
  register_rest_route('api', '/subscribe', [
      'methods' => WP_REST_Server::CREATABLE,
      'callback' => 'api_subscribe_post',
  ]);
}

add_action('rest_api_init', 'register_api_subscribe_post');


?>
