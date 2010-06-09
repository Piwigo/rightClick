{known_script id="jquery" src=$ROOT_URL|cat:"themes/default/js/jquery.packed.js"}
{html_head}
<!-- Provided information by the "rightClick" plugin (version {$RIGHTCK.Version}): {$RIGHTCK.Dir}/template/rightClick_protect.tpl -->
<script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($) {*Smarty*}{ldelim}
{*Smarty*}{foreach item=selector from=$RIGHTCK.Selectors name=select}
	$({*Smarty*}'{$selector}').addClass('rightClick');
{*Smarty*}{/foreach}
	$(".rightClick").each( function() {*Smarty*}{ldelim}
		$(this)[0].oncontextmenu = function() {*Smarty*}{ldelim}
			return false;
		}
	});
});
</script>  
{/html_head}