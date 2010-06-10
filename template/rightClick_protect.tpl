{known_script id="jquery" src=$ROOT_URL|cat:"themes/default/js/jquery.packed.js"}
{html_head}
<!-- Protected images by the "rightClick" plugin (version {$RIGHTCK.Version}): {$RIGHTCK.Dir}/template/rightClick_protect.tpl -->
<script type="text/javascript">
jQuery(document).ready(function($) {ldelim}
{foreach item=selector from=$RIGHTCK.Selectors name=select}
	$('{$selector}').each( function() {ldelim}
		$(this)[0].oncontextmenu = function() {ldelim}
			return false;
		}
	});	
{/foreach}
});
</script>  
{/html_head}
