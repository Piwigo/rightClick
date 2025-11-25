{footer_script require="jquery"}
jQuery(document).ready(function() {ldelim}
  jQuery(document).on('contextmenu', '{$RIGHTCK.Selectors_csv}',  function() {ldelim}
    return false;
  });
	
  jQuery(document).on('dragstart', '{$RIGHTCK.Selectors_csv}',  function() {ldelim}
    return false;
  });
});
{/footer_script}
