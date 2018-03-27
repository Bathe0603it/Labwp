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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'labwp1');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'C%Fy=n7F_D`K<IQ=;HlidQZ{{Jy@`g_9qa)_7%-pWg.mVkzm,>z)#w wQG*7nwM1');
define('SECURE_AUTH_KEY',  '^rM<c;!qdu{em /i`gi*/SSf!w1fUDfJ,$4?s<a;+}(v6JGkGpbq+h$@Y)rL^d/v');
define('LOGGED_IN_KEY',    '<wr5@~x@w^zqrW71&nciw4Y+rl6*R1ep#)?P~D4oO82%z@H.S5/*H<JDhDXoaP)=');
define('NONCE_KEY',        'G4fQ@cW~pa3_^Rgzu[pArAbV++Vi5/S=[R_&H=~wyVM[%%przI|7FK*idY,[Zp2>');
define('AUTH_SALT',        'G{1@ )e5s^^F[2uSV=LW|N^EbrbI~Ft8#0<wx%%r@?E@;cmqajhB.s12ZmDfT}S;');
define('SECURE_AUTH_SALT', 'w:My1<jWI5#c9>VXh}L.B.Du3=oU*S-mOgLXk@>P6cl9*/vg&Za!:G|;TsA6[Y1L');
define('LOGGED_IN_SALT',   'g-+o6?p[c}e7As]-/i*;E=zu/)N4% glP9T2$n!*9s^uE8]~#7eiZR$VM[u2Kyi4');
define('NONCE_SALT',       '}m!|H6w_(A{!b#{dZNl.iS|4w_vRcwmIv5Q^ NAS-rrJ&xzLk0&yyYehjX]ifLCf');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
