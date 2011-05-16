var winW, winH;
var currentSection = 0;
var nav_sections, page_sections;

$(document).ready(function(){
	$(window).resize(onWindowResize);

	nav_sections = $('.scroll');
	page_sections = $('.category');

	updateWindowDimensions();
	
	// Set up page section nav links to scroll smoothly and work w/ splash
	$('.scroll').click(setupNav);
	
	// Show the splash (first time to page, not scrolled at all)
	$(document).scroll(scrollUpdateNav); //nav highlighting changing while scrolling

});

/* NAV Highlighting and scrolling functions */
function setupNav(event) {
	event.preventDefault();
	smoothScroll($(this));
}

function smoothScroll(event) {
	//get the full url - like mysitecom/index.htm#home
	var full_url = event[0].href;

	//split the url by # and get the anchor target name - home in mysitecom/index.htm#home
	var parts = full_url.split("#");
	var trgt = parts[1];
	
	//get the top offset of the target anchor
	var target_offset = $("#"+trgt).offset();
	var target_top = target_offset.top;
	
	//stop listening to nav scroll (this will stop it from highlighting each section as it scrolls past)
	$(document).unbind('scroll');	

	//goto that anchor by setting the body scroll top to anchor top	 
	$('html, body').animate({scrollTop:target_top}, 
		500, 
		function() {
			$(document).scroll(scrollUpdateNav);
			switchHighlight(event[0], nav_sections[currentSection]);
		}
	);
}

function scrollUpdateNav() {
	//Calculate section's top offset from top of page
	var section_offset = $(page_sections[currentSection]).offset().top;
	
	//Calculate section's bottom offset from top of page
	var section_bottom_offset = section_offset + $(page_sections[currentSection]).height();
	
	//Switch when we have entered at least half of the section (? this could be finessed)
	var switch_at = section_bottom_offset - winH/2;

	if($(document).scrollTop() >= switch_at){ //scrolled down
		currentSection += 1;
		switchHighlight(currentSection, currentSection-1);
	}else if($(document).scrollTop() < section_offset - winH/2) { //scrolled up
		currentSection -= 1;
		switchHighlight(currentSection, currentSection+1);
	}
}

function switchHighlight(currentSection, prevSection) {
	$(nav_sections[prevSection]).removeClass('current');		
	$(nav_sections[currentSection]).addClass('current');
	scrollUpdateNav();  //hack!! to update section highlighting correctly when page loads directly to a later section
}

function onWindowResize () {
	updateWindowDimensions();
}

function updateWindowDimensions () {
	if (document.body && document.body.offsetWidth) {
	 winW = document.body.offsetWidth;
	 winH = document.body.offsetHeight;
	}
	if (document.compatMode=='CSS1Compat' &&
	    document.documentElement &&
	    document.documentElement.offsetWidth ) {
	 winW = document.documentElement.offsetWidth;
	 winH = document.documentElement.offsetHeight;
	}
	if (window.innerWidth && window.innerHeight) {
	 winW = window.innerWidth;
	 winH = window.innerHeight;
	}
}


	
