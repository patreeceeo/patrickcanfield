$(document).ready(function() {

	// Open external links in a new window
	hostname = window.location.hostname
	$("a[href^=http]")
	  .not("a[href*='" + hostname + "']")
	  .addClass('link external')
	  .attr('target', '_blank');

});


function show(name) {
  $("#"+name+"-container").removeClass("hidden");
}

function hide(name) {
 $("#"+name+"-container").addClass("hidden"); 
}

