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
define('DB_NAME', 'labwp2');

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
define('AUTH_KEY',         'JQ:@BZM|Jya$4RxG$f*;]Psba[$lE%pG4?*S+BbBPCTnoc}},*Ce1>/]D)9qI&oR');
define('SECURE_AUTH_KEY',  '0zgfc(&xee [cQddEJw$`Oz%6_A7}}3KR2h+XH8f,ZY-0sGESr.$k+0W4l=e-wMA');
define('LOGGED_IN_KEY',    'YZqcqVn&?bqL-F5OaE;)r3x0z|TLX(xkgf}|G)^bZ/uNK W[!&#s^(!jG~D1-]J.');
define('NONCE_KEY',        '`q=A*0$sE^Liw>/BK D%Owawzt-xDvv9NQA<:du=tkb^QJ]x,C]mOAO<dMWwqi+B');
define('AUTH_SALT',        ':>l4-3:UrT S>WA!Tk7<Cla?aRNJ<Xv)?*jPYz|ss<omcouyJ#cvWFlM[*%-/|?e');
define('SECURE_AUTH_SALT', 'Ft[JQUFw0YFijDn6:2I)t-d=ukz=f7_+egR.g=pLG@X*<OL3)4O^AYrTj#cO/(tt');
define('LOGGED_IN_SALT',   '0DdS1b_H%eSkDlUf2-FoF.78Lm^W zq7_&a{_x3d]VM94)!*%HL%IoNZ^yaM3|&a');
define('NONCE_SALT',       '8qr)0_ejsqk;k/A-+0JaR/(*=v#y 9r<&7&LooxY4<,TfYMv6d.%f4/uzx,gmK5{');

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
