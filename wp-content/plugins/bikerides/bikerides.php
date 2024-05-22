<?php

/**
 * @package BikeRides
 */
/*
Plugin Name: Bike Rides
Plugin URI: https://www.revolvair.co.uk/
Description: Enables custom Bike Ride post types, and custom page blocks with mapping capabilities. 
Version: 0.01
Author: James Houston
Author URI: https://www.jameshouston.com/
License: Carlton Reid
Text Domain: bike-rides
*/

if (!defined('ABSPATH')) {
  exit; // Exit if accessed directly.
}

function fun_br_post_type()
{
  $labels = array(
    'name'               => _x('Bike Rides', 'post type general name'),
    'singular_name'      => _x('Bike Ride', 'post type singular name'),
    'add_new'            => _x('Add New', 'track'),
    'add_new_item'       => __('Add New Ride'),
    'edit_item'          => __('Edit Ride'),
    'new_item'           => __('New Ride'),
    'all_items'          => __('All Rides'),
    'view_item'          => __('View Ride'),
    'search_items'       => __('Search Rides'),
    'not_found'          => __('No rides found'),
    'not_found_in_trash' => __('No rides found in the Trash'),
    'menu_name'          => 'Rides'
  );
  $args = array(
    'labels'        => $labels,
    'description'   => 'Holds our bike ride and ride-specific data',
    'public'        => true,
    'publicly_queryable' => true,
    'show_in_rest'  => true,
    'query_var'     => true,
    'capability_type'    => 'post',
    'rest_base'     => 'rides',
    'rest_controller_class' => 'WP_REST_Posts_Controller',
    'menu_position' => 5,
    'menu_icon'     => 'data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA0OCA0OCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBmaWxsPSIjMDAwMDAwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Im0zNS43NDUgMTIuMTdsLTQuOTI1IDEuNDhsMy4yOCA4LjU3OGE4IDggMCAxIDEtMS44NjguNzE1bC0xLjY0OC00LjMxbC01LjY4MiAxMS44MDJBMSAxIDAgMCAxIDI0IDMxaC00LjA2MkE4LjAwMSA4LjAwMSAwIDAgMSA0IDMwYTggOCAwIDAgMSAxNS45MzgtMWgyLjVsLTQuODgtMTMuNjY0QS45OTguOTk4IDAgMCAxIDE3LjUgMTVIMTZhMSAxIDAgMSAxIDAtMmg0LjVhMSAxIDAgMSAxIDAgMmgtLjkzOGwxLjg0MiA1LjE1N2w4LjEyNy00LjI3N2wtLjk2NS0yLjUyM2ExIDEgMCAwIDEgLjY0Ny0xLjMxNWw1Ljk1Ny0xLjc4N2wuNTc1IDEuOTE1bS0xMy42NjIgOS44OWwxLjk3MiA1LjUybDQuMjMtOC43ODR6bTEyLjk4MyA4LjI5N2wtMi4xMTMtNS41MjdhNiA2IDAgMSAwIDEuODY4LS43MTVsMi4xMTMgNS41MjhhMSAxIDAgMCAxLTEuODY4LjcxNE0xNy45MTcgMjlIMTJhMSAxIDAgMSAwIDAgMmg1LjkxN0E2LjAwMiA2LjAwMiAwIDAgMSA2IDMwYTYgNiAwIDAgMSAxMS45MTctMSIgY2xpcC1ydWxlPSJldmVub2RkIi8+PC9zdmc+', // base64 encoded svg menu icon
    'supports'      => array('title', 'editor', 'thumbnail', 'excerpt', 'comments', 'revisions', 'custom-fields'),
    'has_archive'   => true,
    'autop'         => false
  );
  register_post_type('rides', $args);
}
add_action('init', 'fun_br_post_type');


// Prevent WP from adding <p> tags on pages
function disable_wp_auto_p( $content ) {
  if ( is_singular( 'rides' ) ) {
    remove_filter( 'the_content', 'wpautop' );
    remove_filter( 'the_excerpt', 'wpautop' );
  }
  return $content;
}
add_filter( 'the_content', 'disable_wp_auto_p', 0 );


function my_plugin_rest_route_for_post( $route, $post ) {
    if ( $post->post_type === 'rides' ) {

        $route = '/wp/v2/rides/' . $post->ID;
    }

    return $route;
}
add_filter( 'rest_route_for_post', 'my_plugin_rest_route_for_post', 10, 2 );


function get_events_data($data)
{
    $strava_id = $data['strava_id'];
    if ($strava_id == "") {
      $strava_id = "unknown";
    }
    

    $args = array(
        'post_type' => 'rides',
        'posts_per_page'    => -1,
        'meta_key' => 'br_id',
        'meta_value' => $strava_id
    );

    $id_array = [];
    $query = new WP_Query($args);
    while ($query->have_posts()) :
      $query->the_post();
      $id = get_the_ID();
      //$wpid = get_post_meta($id, 'id', true);
      array_push($id_array, array("id" => $id));
      //array_push(intval($id_array, get_post_meta($id, 'br_id', true)));
      
    endwhile;
    $result = $id_array;
    return($result);
    

}

# E.g. make a get request to http://localhost:8888/wp-json/custom/v1/fetchid/1234
add_action('rest_api_init', function () {
  register_rest_route('custom/v1', 'fetchid(?:/(?P<strava_id>\d+))?', array(
      'methods' => 'GET',
      'callback' => 'get_events_data',
      'args' => [
          'strava_id'
      ],
  ));
});





// add_action( 'init', 'wp_learn_register_meta' );
// function wp_learn_register_meta(){
//     register_meta(
//         'post',
//         'br_id',
//         array(
//             'single'       => true,
//             'type'         => 'string',
//             'default'      => '',
//             'show_in_rest' => true,
//         )
//     );
// }


// add_action( 'rest_api_init', 'add_custom_fields' );
// function add_custom_fields() {
//   register_rest_field(
//   'rides', 
//   'br_id', //New Field Name in JSON RESPONSEs
//   array(
//       'get_callback'    => 'get_custom_fields', // custom function name 
//       'update_callback' => 'update_custom_fields',
//       'schema'          => null,
//       )
//   );
// }

add_action('rest_api_init', function(){
  register_rest_field('rides', 'br_id', 
    array(
    'get_callback' => 'get_custom_fields', 
    'update_callback' => 'song_update_post_meta_cb', 
    'schema' => null
    )
  ); 
  register_rest_field('rides', 'br_route', 
    array(
    'get_callback' => 'get_custom_fields', 
    'update_callback' => 'song_update_post_meta_cb', 
    'schema' => null
    )
  ); 
});

function get_custom_fields( $object, $field_name, $request ) {
  //your code goes here
  $customfieldvalue = get_post_meta($object['id'], $field_name, true  );
  return $customfieldvalue;
}

function song_update_post_meta_cb($value, $object, $field_name){
  return update_post_meta($object->ID, $field_name, $value); 
}

// Add Cycle Track messaging on admin pages
function fun_br_messages($messages)
{
  global $post, $post_ID;
  $messages['rides'] = array(
    0 => '',
    1 => sprintf(__('Ride updated. <a href="%s">View track</a>'), esc_url(get_permalink($post_ID))),
    2 => __('Custom field updated.'),
    3 => __('Custom field deleted.'),
    4 => __('Ride updated.'),
    5 => isset($_GET['revision']) ? sprintf(__('Ride restored to revision from %s'), wp_post_revision_title((int) $_GET['revision'], false)) : false,
    6 => sprintf(__('Ride published. <a href="%s">View track</a>'), esc_url(get_permalink($post_ID))),
    7 => __('Ride saved.'),
    8 => sprintf(__('Ride submitted. <a target="_blank" href="%s">Preview ride</a>'), esc_url(add_query_arg('preview', 'true', get_permalink($post_ID)))),
    9 => sprintf(__('Ride scheduled for: <strong>%1$s</strong>. <a target="_blank" href="%2$s">Preview ride</a>'), date_i18n(__('M j, Y @ G:i'), strtotime($post->post_date)), esc_url(get_permalink($post_ID))),
    10 => sprintf(__('Ride draft updated. <a target="_blank" href="%s">Preview ride</a>'), esc_url(add_query_arg('preview', 'true', get_permalink($post_ID)))),
  );
  return $messages;
}
add_filter('post_updated_messages', 'fun_br_messages');

add_action('load-post.php', 'br_meta_boxes_setup');
add_action('load-post-new.php', 'br_meta_boxes_setup');

function br_meta_boxes_setup()
{
  add_action('add_meta_boxes', 'br_add_post_meta_boxes');
  add_action('save_post', 'br_save_post_class_meta', 10, 2);
}

function br_add_post_meta_boxes()
{
  add_meta_box(
    'br-id',                                    // Unique ID
    esc_html__('Strava activity ID', '1234567890'),  // Title
    'fun_br_id',                                // Callback function
    'rides',                                // Admin page (or post type)
    'normal',                                     // Context
    'default'                                     // Priority
  );
  add_meta_box(
    'br-name',
    esc_html__('Strava activity name', 'Lunch Ride'),
    'fun_br_name',
    'rides',
    'normal',
    'default'
  );
  add_meta_box(
    'br-startlatlon',
    esc_html__('Start lat/lng', '[51.1, -0.01]'),
    'fun_br_startlatlon',
    'rides',
    'side',
    'default'
  );
  add_meta_box(
    'br-route',
    esc_html__('Route JSON', 'hello'),
    'fun_br_route',
    'rides',
    'side',
    'default'
  );
}
function fun_br_id($post)
{
  wp_nonce_field(basename(__FILE__), 'br_id_nonce');
  $field_value = get_post_meta($post->ID, 'br_id', false);
  // print($post->ID);
  // print_r($field_value);
  $args = array(
    'wpautop' => false,
    'media_buttons' => false,
    'textarea_rows' => 1,
    'tabindex' => '',
    'tabfocus_elements' => ':prev,:next', 
    'editor_css' => '', 
    'editor_class' => '',
    'teeny' => true,
    'dfw' => false,
    'tinymce' => false,
    'quicktags' => false
  );
  wp_editor($field_value[0], 'br_id', $args);
}
function fun_br_name($post)
{
  wp_nonce_field(basename(__FILE__), 'br_name_nonce');
  $field_value = get_post_meta($post->ID, 'br_name', false);
  $args = array(
    'wpautop' => false,
    'media_buttons' => false,
    'textarea_rows' => 1,
    'teeny'         => true
  );
  wp_editor($field_value[0], 'br_name', $args);
}
function fun_br_startlatlon($post)
{ ?>
  <?php wp_nonce_field(basename(__FILE__), 'br_startlatlon_nonce'); ?>
  <p>
    <label for="br_startlatlon"><?php \_e("e.g. [51.1, -0.01]"); ?></label>
    <br />
    <input class="widefat" type="text" name="br_startlatlon" id="br_startlatlon" value="<?php echo esc_attr(get_post_meta($post->ID, 'br_startlatlon', true)); ?>" size="20" />
  </p>
<?php }

function fun_br_route($post)
{
  wp_nonce_field(basename(__FILE__), 'br_route_nonce');
  $field_value = get_post_meta($post->ID, 'br_route', false);
  $args = array(
    'wpautop' => false,
    'media_buttons' => true,
    'textarea_rows' => 1,
    'teeny'         => false
  );
  wp_editor($field_value[0], 'br_route', $args);
}

function br_save_post_class_meta($post_id, $post)
{
  /* Verify the nonce before proceeding. \*/
  if (!isset($_POST['br_id_nonce']) || !wp_verify_nonce($_POST['br_id_nonce'], basename(__FILE__))) {
    return $post_id;
  }
  if (!isset($_POST['br_name_nonce']) || !wp_verify_nonce($_POST['br_name_nonce'], basename(__FILE__))) {
    return $post_id;
  }
  if (!isset($_POST['br_startlatlon_nonce']) || !wp_verify_nonce($_POST['br_startlatlon_nonce'], basename(__FILE__))) {
    return $post_id;
  }
  if (!isset($_POST['br_route_nonce']) || !wp_verify_nonce($_POST['br_route_nonce'], basename(__FILE__))) {
    return $post_id;
  }

  /* Get the post type object. \*/
  $post_type = get_post_type_object($post->post_type);

  /* Check if the current user has permission to edit the post. \*/
  if (!current_user_can($post_type->cap->edit_post, $post_id)) {
    return $post_id;
  }

  /* Get the posted data and sanitize it for use as an HTML class. \*/
  // check autosave
  if (wp_is_post_autosave($post_id))
    return 'autosave';

  //check post revision
  if (wp_is_post_revision($post_id))
    return 'revision';

  /* If the new meta value does not match the old value, update it. \*/
  if (isset($_POST['br_id'])) {
    update_post_meta($post_id, 'br_id', $_POST['br_id']);
  }
  if (isset($_POST['br_name'])) {
    update_post_meta($post_id, 'br_name', $_POST['br_name']);
  }
  if (isset($_POST['br_startlatlon'])) {
    update_post_meta($post_id, 'br_startlatlon', $_POST['br_startlatlon']);
  }
  if (isset($_POST['br_route'])) {
    update_post_meta($post_id, 'br_route', $_POST['br_route']);
  }
}

// Remove clutter from admin post page
function remove_metaboxes()
{
  remove_meta_box('postcustom', 'rides', 'normal'); //removes custom fields for page
}
add_action('admin_menu', 'remove_metaboxes');

function cc_mime_types($mimes)
{
  $mimes['json'] = 'application/json';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');

function cc_mime_types2($mimes)
{
  $mimes['geojson'] = 'application/json';
  return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types2');

add_filter('manage_ride_posts_columns', 'set_custom_edit_br_columns');

function set_custom_edit_br_columns($columns)
{
  $columns['br_highlight'] = __('Highlight', 'rides');

  $columns = array(
    'cb' => $columns['cb'],
    'title' => __( 'Title' ),
    'br_id' => __( 'Strava ID' ),
    'date' => __( 'Date' ),
  );

  return $columns;
}

add_action('manage_ride_posts_custom_column', 'custom_br_column', 10, 2);
function custom_br_column($column, $post_id)
{
  switch ($column) {

    case 'br_id':
      echo get_post_meta($post_id, 'br_id', true);
      break;
  }
}




/// SETTINGS PAGE

/**
 * @internal never define functions inside callbacks.
 * these functions could be run multiple times; this would result in a fatal error.
 */

/**
 * custom option and settings
 */
function bike_ride_settings_init() {
	// Register a new setting for "cycle_track" page.
	register_setting( 'bike_ride', 'bike_ride_options' );

  // Register a new section in the "cycle_track" page.
	add_settings_section(
		'bike_ride_section_bigmap',
		__( 'Map', 'bike_ride' ), 'bike_ride_section_bigmap_callback',
		'bike_ride'
	);

	// Register a new field in the "cycle_track_section_developers" section, inside the "cycle_track" page.
	add_settings_field(
		'bike_ride_field_mapboxkey', // As of WP 4.6 this value is used only internally.
		                        // Use $args' label_for to populate the id inside the callback.
			__( 'Mapbox access token', 'bike_ride' ),
		'bike_ride_field_mapboxkey_cb',
		'bike_ride',
		'bike_ride_section_bigmap',
		array(
			'label_for'         => 'bike_ride_field_mapboxkey',
			'class'             => 'bike_ride_row',
			'bike_ride_custom_data' => 'custom',
		)
	);

  add_settings_field(
		'bike_ride_field_mapboxstyle', // As of WP 4.6 this value is used only internally.
		                        // Use $args' label_for to populate the id inside the callback.
			__( 'Mapbox style', 'bike_ride' ),
		'bike_ride_field_mapboxstyle_cb',
		'bike_ride',
		'bike_ride_section_bigmap',
		array(
			'label_for'         => 'bike_ride_field_mapboxstyle',
			'class'             => 'bike_ride_row',
			'bike_ride_custom_data' => 'custom',
		)
	);


}

/**
 * Register our bike_ride_settings_init to the admin_init action hook.
 */
add_action( 'admin_init', 'bike_ride_settings_init' );


/**
 * Custom option and settings:
 *  - callback functions
 */


/**
 * Developers section callback function.
 *
 * @param array $args  The settings array, defining title, id, callback.
 */
function bike_ride_section_bigmap_callback( $args ) {
	?>
	<p id="<?php echo esc_attr( $args['id'] ); ?>"><?php esc_html_e( 'Configure the map settings here.', 'bike_ride' ); ?></p>
	<?php
}


/**
 * Pill field callbakc function.
 *
 * WordPress has magic interaction with the following keys: label_for, class.
 * - the "label_for" key value is used for the "for" attribute of the <label>.
 * - the "class" key value is used for the "class" attribute of the <tr> containing the field.
 * Note: you can add custom key value pairs to be used inside your callbacks.
 *
 * @param array $args
 */
function bike_ride_field_mapboxkey_cb( $args ) {
	// Get the value of the setting we've registered with register_setting()
	$options = get_option( 'bike_ride_options' );
	?>

 
  <input 
    id="<?php echo esc_attr( $args['label_for'] ); ?>" 
    name="bike_ride_options[<?php echo esc_attr( $args['label_for'] ); ?>]"
    type="text" 
    data-custom="<?php echo esc_attr( $args['bike_ride_custom_data'] ); ?>" 
    value="<?php echo esc_attr( $options['bike_ride_field_mapboxkey'] ); ?>"
    style="width:400px;">
  </input>
	<p class="description">
		<?php esc_html_e( 'Enter your mapboxgl access token. This looks like: pk.eyJ1IjoiamltbG9uZG9uIiwiYSI6ImNscWJlbm1lazFnazkyaXM5dm92OXFtdnoifQ.3dZAzYYRtZ231hCo6omktQ', 'bike_ride' ); ?>
	</p>
	<?php
}

function bike_ride_field_mapboxstyle_cb( $args ) {
	// Get the value of the setting we've registered with register_setting()
	$options = get_option( 'bike_ride_options' );
	?>
<input 
id="<?php echo esc_attr( $args['label_for'] ); ?>" 
name="bike_ride_options[<?php echo esc_attr( $args['label_for'] ); ?>]"
type="text" 
data-custom="<?php echo esc_attr( $args['bike_ride_custom_data'] ); ?>" 
value="<?php echo esc_attr( $options['bike_ride_field_mapboxstyle'] ); ?>"
style="width:400px;">
</input>
<p class="description">
<?php esc_html_e( 'If you don\'t have a dedicated style, use: mapbox://styles/mapbox/streets-v12', 'bike_ride' ); ?>
</p>
<?php
}





/**
 * Add the top level menu page.
 */
function bike_ride_options_page() {
	add_menu_page(
		'Bike Ride Settings',
		'Bike Ride Settings',
		'manage_options',
		'bike_ride',
		'bike_ride_options_page_html'
	);
}


/**
 * Register our cycle_track_options_page to the admin_menu action hook.
 */
add_action( 'admin_menu', 'bike_ride_options_page' );


/**
 * Top level menu callback function
 */
function bike_ride_options_page_html() {
	// check user capabilities
	if ( ! current_user_can( 'manage_options' ) ) {
		return;
	}

	// add error/update messages

	// check if the user have submitted the settings
	// WordPress will add the "settings-updated" $_GET parameter to the url
	if ( isset( $_GET['settings-updated'] ) ) {
		// add settings saved message with the class of "updated"
		add_settings_error( 'bike_ride_messages', 'bike_ride_message', __( 'Settings Saved', 'bike_ride' ), 'updated' );
	}

	// show error/update messages
	settings_errors( 'bike_ride_messages' );
	?>
	<div class="wrap">
		<h1><?php echo esc_html( get_admin_page_title() ); ?></h1>
		<form action="options.php" method="post">
			<?php
			// output security fields for the registered setting "cycle_track"
			settings_fields( 'bike_ride' );
			// output setting sections and their fields
			// (sections are registered for "cycle_track", each field is registered to a specific section)
			do_settings_sections( 'bike_ride' );
			// output save settings button
			submit_button( 'Save Settings' );
			?>
		</form>
	</div>
	<?php
}