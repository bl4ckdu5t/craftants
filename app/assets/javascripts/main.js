var ready = function(){
  /* Responsive images slider */
  $(".rslides").responsiveSlides({
    pager: true,
    nav: true,
    speed: 500,
    maxwidth: 800,
    namespace: "transparent-btns"
  });
	/* Select2 Select boxes */
	$('.select2').select2();
	/* Smooth Scroll for in page links */
	$('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
  // Scroll to top. Kinda useless with scroll feature from extended js
  $(".scroll").click(function(event){   
      event.preventDefault();
      $('html,body').animate({scrollTop:$(this.hash).offset().top}, 800,'swing');
  });
  // Hide tooltip
  $('.social i').tooltip('hide');
  // Init uniform
  $('input[type="checkbox"], input[type="radio"], select').uniform();
  // Carousel init
  $('.carousel').swipe( {
       swipeLeft: function() {
           $(this).carousel('next');
       },
       swipeRight: function() {
           $(this).carousel('prev');
       },
       allowPageScroll: 'vertical'
  });
  // The great wowJS
  var wow = new WOW(
    {
      boxClass:     'wowload',      // animated element css class (default is wow)
      animateClass: 'animated', // animation css class (default is animated)
      offset:       0,          // distance to the element when triggering the animation (default is 0)
      mobile:       true,       // trigger animations on mobile devices (default is true)
      live:         true        // act on asynchronously loaded content (default is true)
    }
  );
  wow.init();
  
  /* Tab switch on user profile */
  $('#myTab a').click(function (e) {
    e.preventDefault()
    $(this).tab('show')
  });
};
// Ready Pages
$(document).ready(ready);
// Turbolinks
$(document).on('page:load', ready);