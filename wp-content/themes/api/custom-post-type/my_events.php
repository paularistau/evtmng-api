<?php
function register_cpt_my_events() {
  register_post_type('my_events', array(
    'label' => 'My events',
    'description' => 'My events',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'rewrite' => array('slug' => 'my_events', 'with_front' => true),
    'query_var' => true,
    'supports' => array('custom-fields', 'author', 'title'),
    'publicly_queryable' => true
  ));
}
add_action('init', 'register_cpt_my_events');

?>