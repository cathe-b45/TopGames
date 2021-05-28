(function ($) {
    "use strict";
    
    // Dropdown on mouse hover
    $(document).ready(function () {
        function toggleNavbarMethod() {
            if ($(window).width() > 768) {
                $('.navbar .dropdown').on('mouseover', function () {
                    $('.dropdown-toggle', this).trigger('click');
                }).on('mouseout', function () {
                    $('.dropdown-toggle', this).trigger('click').blur();
                });
            } else {
                $('.navbar .dropdown').off('mouseover').off('mouseout');
            }
        }
        toggleNavbarMethod();
        $(window).resize(toggleNavbarMethod);
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });
    
    
    // Header slider
    if($('.header-slider').length){
    
	    $('.header-slider').slick({
	        autoplay: true,
	        dots: true,
	        infinite: true,
	        slidesToShow: 1,
	        slidesToScroll: 1
	    });
	}
    
    
    // Product Slider 4 Column
    if($('.product-slider-4').length){
	    $('.product-slider-4').slick({
	        autoplay: true,
	        infinite: true,
	        dots: false,
	        slidesToShow: 4,
	        slidesToScroll: 1,
	        responsive: [
	            {
	                breakpoint: 1200,
	                settings: {
	                    slidesToShow: 4,
	                }
	            },
	            {
	                breakpoint: 992,
	                settings: {
	                    slidesToShow: 3,
	                }
	            },
	            {
	                breakpoint: 768,
	                settings: {
	                    slidesToShow: 2,
	                }
	            },
	            {
	                breakpoint: 576,
	                settings: {
	                    slidesToShow: 1,
	                }
	            },
	        ]
	    });
	}
    
    
    // Product Slider 3 Column
    if($('.product-slider-3').length){
	    $('.product-slider-3').slick({
	        autoplay: true,
	        infinite: true,
	        dots: false,
	        slidesToShow: 3,
	        slidesToScroll: 1,
	        responsive: [
	            {
	                breakpoint: 992,
	                settings: {
	                    slidesToShow: 3,
	                }
	            },
	            {
	                breakpoint: 768,
	                settings: {
	                    slidesToShow: 2,
	                }
	            },
	            {
	                breakpoint: 576,
	                settings: {
	                    slidesToShow: 1,
	                }
	            },
	        ]
	    });
	}
    
    
    // Product Detail Slider
    if($('.product-slider-single').length){
	    $('.product-slider-single').slick({
	        infinite: true,
	        autoplay: true,
	        dots: false,
	        fade: true,
	        slidesToShow: 1,
	        slidesToScroll: 1,
	        asNavFor: '.product-slider-single-nav'
	    });
	}
	
	if($('.product-slider-single-nav').length){
	    $('.product-slider-single-nav').slick({
	        slidesToShow: 3,
	        slidesToScroll: 1,
	        dots: false,
	        centerMode: true,
	        focusOnSelect: true,
	        asNavFor: '.product-slider-single'
	    });
	}
    
    // Brand Slider
    if($('.brand-slider').length){
	    $('.brand-slider').slick({
	        speed: 5000,
	        autoplay: true,
	        autoplaySpeed: 0,
	        cssEase: 'linear',
	        slidesToShow: 5,
	        slidesToScroll: 1,
	        infinite: true,
	        swipeToSlide: true,
	        centerMode: true,
	        focusOnSelect: false,
	        arrows: false,
	        dots: false,
	        responsive: [
	            {
	                breakpoint: 992,
	                settings: {
	                    slidesToShow: 4,
	                }
	            },
	            {
	                breakpoint: 768,
	                settings: {
	                    slidesToShow: 3,
	                }
	            },
	            {
	                breakpoint: 576,
	                settings: {
	                    slidesToShow: 2,
	                }
	            },
	            {
	                breakpoint: 300,
	                settings: {
	                    slidesToShow: 1,
	                }
	            }
	        ]
	    });
	}
    
    
    // Review slider
    if($('.review-slider').length){
	    $('.review-slider').slick({
	        autoplay: true,
	        dots: false,
	        infinite: true,
	        slidesToShow: 2,
	        slidesToScroll: 1,
	        responsive: [
	            {
	                breakpoint: 768,
	                settings: {
	                    slidesToShow: 1,
	                }
	            }
	        ]
	    });
	}
	
})(jQuery);

