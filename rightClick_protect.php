<?php
/* rightClick */
if (!defined('PHPWG_ROOT_PATH') or !defined('RIGHTCK_DIR')) die('Hacking attempt!');

if ( !function_exists( 'rightClick_protect' ) ) {
	if ( defined('IN_ADMIN') and IN_ADMIN ) return false;
	add_event_handler('loc_after_page_header', 'rightClick_protect', 20);

	function  rightClick_protect() {
		global $template, $user, $conf;
		if (!isset($conf['rightClick_level'])) $Maxlvl = max($conf['available_permission_levels']);
		else $Maxlvl = $conf['rightClick_level'];
		if ($user['level'] >= $Maxlvl) return;
		$default = array( '#theImage img', '#akPicture', '#colorbox', '#sb-container', );
		if (!isset($conf['rightClick_selectors'])) $conf['rightClick_selectors'] = array();
		$conf['rightClick_selectors'] = array_unique( array_merge($default, $conf['rightClick_selectors']) );
		
		$template->set_filenames(array(
		'rightClick_protect' => dirname(__FILE__) . '/template/rightClick_protect.tpl',
		));
		$Path = embellish_url($template->get_template_vars('ROOT_URL').RIGHTCK_PATH);
		$protect = array(
			'Dir' 				=> RIGHTCK_DIR,
			'Path' 				=> $Path,
			'Version' 			=> RIGHTCK_VER,
			'Selectors'			=> $conf['rightClick_selectors'],
			);
		$template->assign( array( 'RIGHTCK' => $protect ) );
		$template->parse('rightClick_protect');
	}
}
?>