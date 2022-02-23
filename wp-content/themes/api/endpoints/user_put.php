<?php

function api_user_put($request) {
  $user = wp_get_current_user();
  $user_id = $user->ID;

  if($user_id > 0) {
    $email = sanitize_email( $request['email'] );
    $username = sanitize_text_field($request['username']);
    $password = $request['password'];
    $role = $request['role'];


    if(!$email_exists || $email_exists === $user_id) {
      $response = array(
        'ID' => $user_id,
        'user_pass' => $password,
        'user_email' => $email,
        'display_name' => $username,
        'first_name' => $username,
        'role' => $role,
      );
      wp_update_user($response);
    } else {
      $response = new WP_Error('email', 'Email already in use.', array('status' => 403));
    }
  } else {
    $response = new WP_Error('permission', 'User unauthorized.', array('status' => 401));
  }
  return rest_ensure_response($response);
}

function register_api_user_put() {
  register_rest_route('api', '/user', array(
    array(
      'methods' => WP_REST_Server::EDITABLE,
      'callback' => 'api_user_put',
    ),
  ));
}

add_action('rest_api_init', 'register_api_user_put');


?>