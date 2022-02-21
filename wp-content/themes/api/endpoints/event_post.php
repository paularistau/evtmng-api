<?php

function api_event_post($request) {
  $user = wp_get_current_user();
  $user_id = $user->ID;

  if($user_id > 0) {
    $name = sanitize_text_field($request['name']);
    $type = sanitize_text_field($request['type']);
    $description = sanitize_text_field($request['description']);
    $user_id = $user->user_login;
    $start_date = $start_date;
    $end_date = $end_date;
    $status = $status;

    $files = $request->get_file_params();

    if (empty($name) || empty($type) || empty($description) || empty($start_date) || empty($end_date) || empty($status)) {
      $response = new WP_Error('error', 'Dados incompletos.', ['status' => 422]);
      return rest_ensure_response($response);
    }

    $response = array(
      'post_author' => $user_id,
      'post_type' => 'event',
      'post_title' => $name,
      'post_status' => 'active',
      'files' => $files,
      'meta_input' => array(
        'name' => $name,
        'type' => $type,
        'start_date' => $start_date,
        'end_date' => $end_date,
        'description' => $description,
        'status' => $status,
        'user_id' => $user_id,
      ),
    );
    $post_id = wp_insert_post($response);

    require_once ABSPATH . 'wp-admin/includes/image.php';
    require_once ABSPATH . 'wp-admin/includes/file.php';
    require_once ABSPATH . 'wp-admin/includes/media.php';

    $photo_id = media_handle_upload('img', $post_id);
    update_post_meta($post_id, 'img', $photo_id);


    $response['id'] = get_post_field('post_name', $event_id);

  } else {
    $response = new WP_Error('permission', 'User unauthorized.', array('status' => 401));
  }
  return rest_ensure_response($response);
}

function register_api_event_post() {
  register_rest_route('api', '/event', array(
    array(
      'methods' => WP_REST_Server::CREATABLE,
      'callback' => 'api_event_post',
    ),
  ));
}

add_action('rest_api_init', 'register_api_event_post');


?>