<?php
function register_cpt_subscribe() {
  register_post_type('subscribe', array(
    'label' => 'Subscribe',
    'description' => 'Subscribe',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'rewrite' => array('slug' => 'subscribe', 'with_front' => true),
    'query_var' => true,
    'supports' => array('custom-fields', 'author', 'title'),
    'publicly_queryable' => true
  ));
}
add_action('init', 'register_cpt_subscribe');

?>