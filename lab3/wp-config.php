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
define('DB_NAME', 'wp_lab3');

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
define('AUTH_KEY',         '?JSjA~y`fY@Zm~!!6%r`ld5.dS6}Bp(l(&0am(aCC8}y8ru?NhgHqE!UFbVzM4hn');
define('SECURE_AUTH_KEY',  'f;?N0tlj^EnB/Vpl<dsA*3>Lv$VT,54eoM /75|]W-fftv{%%A/psfq?5oTOsds2');
define('LOGGED_IN_KEY',    '1gz9O!c$?cL1YEe%iV#w.h=k%53BN4=X[MLENvR>;JI-C$!N.rVRPU#9?kn/<T<Q');
define('NONCE_KEY',        '!+ lylJP&*e7$VqD^21l 7ZnH|m)q/-)S2qd.|FSdwPOqW`Q-c7ojnJ;a6HZ$(Z{');
define('AUTH_SALT',        'x|<7]d+?fYdG +c$7|eh]Jd>T#| 2{:x17wN|-MHIjo.ff%=~&x-nbCS<Ivb8RL>');
define('SECURE_AUTH_SALT', '^^ s;o^?2]+1B+|31fqA^;5LXV{PfEAg^<YWrIaIb]LS:|cmzTFrM)~]%=-nwf}D');
define('LOGGED_IN_SALT',   '*hH$Lre33>v%--}gx} lrks2&6,fP>0p5KIxW4G^qvYwoRa{pCqPETeMW>1Mc{[C');
define('NONCE_SALT',       '={+;StsQ_|>KLgfFPRm~Az3Kf|L/$*Tc}J0OQ`9]<ObiQpb/.hL|l4bErWkvi m[');

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
