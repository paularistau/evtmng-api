<?php

function api_user_put($request) {
  $user = wp_get_current_user();
  $user_id = $user->ID;

  if($user_id > 0) {
    $email = sanitize_email($request['email']);
    $password = $request['password'];
    $username = sanitize_text_field($request['username']);

    $email_exists = email_exists($email);

    if(!$email_exists || $email_exists === $user_id) {
      $response = array(
        'ID' => $user_id,
        'user_login' => $username,
        'user_email' => $email,
        'user_pass' => $password,
      );
      wp_update_user($response);
    } else {
      $response = new WP_Error('email', 'Email address you entered already is being used, please try another one.', array('status' => 403));
    }
  } else {
    $response = new WP_Error('permission', 'User unauthorized.', array('status' => 401));
  }
  return rest_ensure_response($response);
}

function registrar_api_user_put() {
  register_rest_route('api', '/user', array(
    array(
      'methods' => WP_REST_Server::EDITABLE,
      'callback' => 'api_user_put',
    ),
  ));
}

add_action('rest_api_init', 'registrar_api_user_put');


?>