$(document).ready(function(){

	// if we are at www.uwdesign2011.com show splash 
	/* if (window.location == "www.uwdesign2011.com" 
	 	 || window.location == "http://www.uwdesign2011.com" 
	 	 || window.location == "uwdesign2011.com") { */

		$('#content').addClass('fix-work');

		/* FADE ANIMATE */
		var splashImgs = $('#splash-imgs img');
		
		//hide second image on page
		$(splashImgs[0]).css('display', 'none'); 
		
		//start fading out first image after .9 seconds (from page load)
		$(splashImgs[1]).delay(1500).fadeOut(200);
		
		//start fading in second image after .7 seconds (from page load)
		$(splashImgs[0]).delay(1700).fadeIn(300); 
		
		//start fading out second image after 1.5 seconds (from page load)
		$(splashImgs[0]).delay(2000).fadeOut('slow', hideSplash);
		
		// On click of white opaque layer hide the splash immediately								
		$('#splash-info-hide').click(function(event) {
			event.preventDefault();
			$('#splash-info').clearQueue();
			$('#splash-info').fadeOut('slow', hideSplash);
		});
	/*	Don't show the splash when url is www.uwdesign2011.com/projects
	} else {	
		hideSplash();
	}
	*/
});

// Hide splash on page and unfix the page
function hideSplash() {
	$('#splash-info').css('display', 'none');		//Hide the splash img
	$('#splash-info-hide').fadeOut();				//Hide the splash link
	$('#all-work').removeClass('fix-work'); 		//let the work scroll now
}
