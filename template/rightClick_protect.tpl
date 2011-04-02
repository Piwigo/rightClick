{footer_script require="jquery"}
<!-- Protected images by the "rightClick" plugin (version {$RIGHTCK.Version}): {$RIGHTCK.Dir}/template/rightClick_protect.tpl -->
jQuery(document).ready(function() {ldelim}
	jQuery('{','|@implode:$RIGHTCK.Selectors}').each( function() {ldelim}
		jQuery(this)[0].oncontextmenu = function() {ldelim}
			return false;
		}
	});	
});
{/footer_script}
