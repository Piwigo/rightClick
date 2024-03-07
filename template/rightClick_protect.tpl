{footer_script require="jquery"}
jQuery(document).ready(function() {ldelim}
  jQuery(document).on('contextmenu', '{','|@implode:$RIGHTCK.Selectors}',  function() {ldelim}
    return false;
  });
	
  jQuery(document).on('dragstart', '{','|@implode:$RIGHTCK.Selectors}',  function() {ldelim}
    return false;
  });
});
{/footer_script}
