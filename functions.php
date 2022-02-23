<?php

$template_diretorio = get_template_directory();

require_once($template_diretorio . "/custom-post-type/event.php");
require_once($template_diretorio . "/custom-post-type/subscribe.php");

require_once($template_diretorio . "/endpoints/user_post.php");
require_once($template_diretorio . "/endpoints/user_get.php");
require_once($template_diretorio . "/endpoints/user_put.php");

require_once($template_diretorio . "/endpoints/event_post.php");
require_once($template_diretorio . "/endpoints/event_get.php");
require_once($template_diretorio . "/endpoints/event_delete.php");

require_once($template_diretorio . "/endpoints/subscribe_post.php");
require_once($template_diretorio . "/endpoints/subscribe_get.php");
require_once($template_diretorio . "/endpoints/subscribe_delete.php");

function get_event_id_by_slug($slug) {
  $query = new WP_Query(array(
    'name' => $slug,
    'post_type' => 'event',
    'numberposts' => 1,
    'fields' => 'ids'
  ));
  $posts = $query->get_posts();
  return array_shift($posts);
}

function change_api($slug) {
  return 'json';
}
add_filter('rest_url_prefix', 'change_api');

function expire_token() {
  return time() + (60 * 60 * 24);
}
add_action('jwt_auth_expire', 'expire_token');

function my_login_screen() { ?>
<style type="text/css">
#login h1 a {
  background-image: none;
}
#backtoblog {
  display: none;
}
</style>
<?php }
add_action('login_enqueue_scripts', 'my_login_screen');

?>