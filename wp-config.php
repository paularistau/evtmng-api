<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'AagENAJpvIrf+Br7MmKW4p6oVADoHrGSIEpIxyca/OH98mBTaYWHIjFO659LwAzsLz/grzroxSgJq/LMiGX3eg==');
define('SECURE_AUTH_KEY',  'f2GelbGg1c4ua3c2fd546IKKkej7+ryUUUeTU0uRvTA/sApgEKGfnNJeYgk/Mq1NDwbUPDBhep6NVUYRjfTaFw==');
define('LOGGED_IN_KEY',    'mjqqdT5pm0ut5be265/67Qde1YrJeQ3RzEUSpD0SQJ6U0IQe3nhReCgQ30FPBQIUsNRSH3pxKKdkGMyyAwPSmw==');
define('NONCE_KEY',        'Ay0ex+O5zn/AmpaiqQ6MT1GZeM4kPBozIk/sY/TXPi2tkwJTYiwfoR4gxlxSY/0JRv4CMRkDLN1xSDhzSV8Xdw==');
define('AUTH_SALT',        'oc+4O6azOU9izJCWcxsifHprcfTrJGEMy2J3Eqf17gwXE00YvudmSE76citpKmrpJ5quqDe56POaAN2/wv59mQ==');
define('SECURE_AUTH_SALT', 'cwpo1VGQpjUp9Z2f/XOqaDf82PNofUESPMSwUuPByK6JNIqzhp4ekTjrpfY4EPCr9sMuNOcub8KAVUPQpoVloQ==');
define('LOGGED_IN_SALT',   'aMq9JiMfsKAYsdHa3egFjR5JIB5uR7rouFG9RYfO3eRYIGbhZ5l8LtUomBVH/nRaSQlKlf6EquUyn+9xtJ7buA==');
define('NONCE_SALT',       'I0gPYbGus/OJmHe6rAvvx/F+EX9LyrjeWgGNrWjUG/S8K/PPZEJVaCs0FhKKfMyD+TQSPwHVYTV9biVX+6YC7w==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

define('JWT_AUTH_SECRET_KEY', '$4`g@)-[IT5N{m3Y(8o>e<jK+4*KknLi3g=@g*s^jfZ+ZM[oC-<,d8re0 ');
define('JWT_AUTH_CORS_ENABLE', true);



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
