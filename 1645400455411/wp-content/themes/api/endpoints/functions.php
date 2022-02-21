<?php
// Remove as rotas definidas pelo WordPress
remove_action('rest_api_init', 'create_initial_rest_routes', 99);

$dirbase = get_template_directory();
require_once $dirbase . '/endpoints/user_post.php';
require_once $dirbase . '/endpoints/user_get.php';

// require_once $dirbase . '/endpoints/event_get';
// require_once $dirbase . '/endpoints/event_post';

// require_once $dirbase . '/endpoints/event_type_post';
// require_once $dirbase . '/endpoints/event_type_get';

// require_once $dirbase . '/custom-post-type/event.php';
// require_once $dirbase . '/custom-post-type/event_type.php';


function get_event_id_by_slug($slug) {
  $query = new WP_Query(array(
    'name' => $slug,
    'event_type' => 'event',
    'numberevents' => 1,
    'fields' => 'ids'
  ));
  $events = $query->get_events();
  return array_shift($events);
}

add_action('rest_pre_serve_request', function() {
  header('Access-Control-Expose-Headers: X-Total-Count');
});

function change_api($slug) {
  return 'json';
}
add_filter('rest_url_prefix', 'change_api');

function expire_token() {
  return time() + (60 * 60 * 24);
}

add_action('jwt_auth_expire', 'expire_token');
?>
