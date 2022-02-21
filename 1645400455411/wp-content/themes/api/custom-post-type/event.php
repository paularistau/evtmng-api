<?php
function register_cpt_event() {
  register_post_type('event', array(
    'label' => 'Event',
    'description' => 'Event',
    'public' => true,
    'show_ui' => true,
    'capability_type' => 'post',
    'rewrite' => array('slug' => 'event', 'with_front' => true),
    'query_var' => true,
    'supports' => array('custom-fields', 'author', 'title'),
    'publicly_queryable' => true
  ));
}
add_action('init', 'register_cpt_event');

?>