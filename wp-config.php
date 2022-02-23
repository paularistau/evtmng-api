<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'db_evtmng' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'evtmng_user' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'u#YgSrkRh3zsxBJR2#' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'mysql745.umbler.com:41890' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '(,F|mI%= }_UV?Z-T$arc:1O8PxBsJ2S3g_gd(#>R%uxrTb5ar:J0orJZw+@|T8u' );
define( 'SECURE_AUTH_KEY',  '9?%e!SMLb~-_VKJ !@YZ!moUitl99Qq9>0cppRaXcIAATHPpe<c;sc(HO{X)POHd' );
define( 'LOGGED_IN_KEY',    'Hdmm4,XXdd%;NeW,p.d8A!S)KxJ:.K:UPz:2 J9SKmtf!46>cA97V#G~FV f,=<3' );
define( 'NONCE_KEY',        '4>x8e:{s6B&,k>vUz;p_IS6 jJk98KjO/}Wl<L=T4@ &j8a!Mb>O`rWJ$CVxG7md' );
define( 'AUTH_SALT',        '>vSw3WVSet/>$<NjY~j6~>EpKzL|E*X+Q27n6u]HrkBX%f`K=2U-N mfnjdmpFz)' );
define( 'SECURE_AUTH_SALT', 'b83=7Vdy*4.C,z|J5nrr&^|Fgf0=,CY[7aw!c(@7*Yi[<8|u2*$}j>1K`D v3%#Y' );
define( 'LOGGED_IN_SALT',   'kN ACc7R16^ Mj{oYjcNaR[`[;SEA]Y:F?OrjZBhNwPJx Y}Zi^;=8F!C4W/KHZh' );
define( 'NONCE_SALT',       '#@6,F+|n:?K+xuiTB9^Xo/=WX=(7FQM?5Ay3nyLT_Vl!;LDS=W<K:Ov%Vu6Tt&,8' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

define('JWT_AUTH_SECRET_KEY', 'beJB5qktY(o`26_Wc0pn{}}~u=RqdLzh0By<Wh:hGn`|VbSdo2D {|$?mT[.,HN4');
define('JWT_AUTH_CORS_ENABLE', true);

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Adicione valores personalizados entre esta linha até "Isto é tudo". */



/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
