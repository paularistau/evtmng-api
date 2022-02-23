<?php

function api_event_post($request) {
  $user = wp_get_current_user();
  $user_id = $user->ID;

  if ($user_id === 0) {
    $response = new WP_Error('error', 'User unauthorized.', ['status' => 401]);
    return rest_ensure_response($response);
  }

  $name = sanitize_text_field($request['name']);
  $type = sanitize_text_field($request['type']);
  $description = sanitize_text_field($request['description']);
  $start_date = sanitize_text_field($request['start_date']);
  $end_date = sanitize_text_field($request['end_date']);
  $status = $status;
  $files = $request->get_file_params();


  if (empty($name) || empty($type) || empty($description) || empty($files)) {
    $response = new WP_Error('error', 'Dados incompletos.', ['status' => 422]);
    return rest_ensure_response($response);
  }

  $response = array(
    'post_author' => $user_id,
    'post_type' => 'event',
    'post_status' => 'publish',
    'post_title' => $name,
    'post_content' => $name,
    'files' => $files,
    'meta_input' => array(
      'name' => $name,
      'type' => $type,
      'start_date' => $start_date,
      'end_date' => $end_date,
      'description' => $description,
      'status' => 'publish',
    ),
  );

  $post_id = wp_insert_post($response);

  require_once ABSPATH . 'wp-admin/includes/image.php';
  require_once ABSPATH . 'wp-admin/includes/file.php';
  require_once ABSPATH . 'wp-admin/includes/media.php';

  $event_id = media_handle_upload('img', $post_id);
  update_post_meta($post_id, 'img', $event_id);

  return rest_ensure_response($response);
}

function register_api_event_post() {
  register_rest_route('api', '/event', [
      'methods' => WP_REST_Server::CREATABLE,
      'callback' => 'api_event_post',
  ]);
}

add_action('rest_api_init', 'register_api_event_post');


?>