(function($) {

	"use strict";

	$(window).stellar({
    responsive: true,
    parallaxBackgrounds: true,
    parallaxElements: true,
    horizontalScrolling: false,
    hideDistantElements: false,
    scrollProperty: 'scroll'
  });


	var fullHeight = function() {

		$('.js-fullheight').css('height', $(window).height());
		$(window).resize(function(){
			$('.js-fullheight').css('height', $(window).height());
		});

	};
	fullHeight();

	// loader
	var loader = function() {
		setTimeout(function() { 
			if($('#ftco-loader').length > 0) {
				$('#ftco-loader').removeClass('show');
			}
		}, 1);
	};
	loader();

	var carousel = function() {
		$('.carousel-testimony').owlCarousel({
			center: true,
			loop: true,
			autoplay: true,
			autoplaySpeed:2000,
			items:1,
			margin: 30,
			stagePadding: 0,
			nav: false,
			navText: ['<span class="ion-ios-arrow-back">', '<span class="ion-ios-arrow-forward">'],
			responsive:{
				0:{
					items: 1
				},
				600:{
					items: 2
				},
				1000:{
					items: 3
				}
			}
		});

	};
	carousel();

	$('nav .dropdown').hover(function(){
		var $this = $(this);
		// 	 timer;
		// clearTimeout(timer);
		$this.addClass('show');
		$this.find('> a').attr('aria-expanded', true);
		// $this.find('.dropdown-menu').addClass('animated-fast fadeInUp show');
		$this.find('.dropdown-menu').addClass('show');
	}, function(){
		var $this = $(this);
			// timer;
		// timer = setTimeout(function(){
			$this.removeClass('show');
			$this.find('> a').attr('aria-expanded', false);
			// $this.find('.dropdown-menu').removeClass('animated-fast fadeInUp show');
			$this.find('.dropdown-menu').removeClass('show');
		// }, 100);
	});


	$('#dropdown04').on('show.bs.dropdown', function () {
	  console.log('show');
	});

	// scroll
	var scrollWindow = function() {
		$(window).scroll(function(){
			var $w = $(this),
					st = $w.scrollTop(),
					navbar = $('.ftco_navbar'),
					sd = $('.js-scroll-wrap');

			if (st > 150) {
				if ( !navbar.hasClass('scrolled') ) {
					navbar.addClass('scrolled');	
				}
			} 
			if (st < 150) {
				if ( navbar.hasClass('scrolled') ) {
					navbar.removeClass('scrolled sleep');
				}
			} 
			if ( st > 350 ) {
				if ( !navbar.hasClass('awake') ) {
					navbar.addClass('awake');	
				}
				
				if(sd.length > 0) {
					sd.addClass('sleep');
				}
			}
			if ( st < 350 ) {
				if ( navbar.hasClass('awake') ) {
					navbar.removeClass('awake');
					navbar.addClass('sleep');
				}
				if(sd.length > 0) {
					sd.removeClass('sleep');
				}
			}
		});
	};
	scrollWindow();

	var counter = function() {
		
		$('#section-counter, .wrap-about, .ftco-counter').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('ftco-animated') ) {

				var comma_separator_number_step = $.animateNumber.numberStepFactories.separator(',')
				$('.number').each(function(){
					var $this = $(this),
						num = $this.data('number');
						console.log(num);
					$this.animateNumber(
					  {
					    number: num,
					    numberStep: comma_separator_number_step
					  }, 7000
					);
				});
				
			}

		} , { offset: '95%' } );

	}
	counter();


	var contentWayPoint = function() {
		var i = 0;
		$('.ftco-animate').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('ftco-animated') ) {
				
				i++;

				$(this.element).addClass('item-animate');
				setTimeout(function(){

					$('body .ftco-animate.item-animate').each(function(k){
						var el = $(this);
						setTimeout( function () {
							var effect = el.data('animate-effect');
							if ( effect === 'fadeIn') {
								el.addClass('fadeIn ftco-animated');
							} else if ( effect === 'fadeInLeft') {
								el.addClass('fadeInLeft ftco-animated');
							} else if ( effect === 'fadeInRight') {
								el.addClass('fadeInRight ftco-animated');
							} else {
								el.addClass('fadeInUp ftco-animated');
							}
							el.removeClass('item-animate');
						},  k * 50, 'easeInOutExpo' );
					});
					
				}, 100);
				
			}

		} , { offset: '95%' } );
	};
	contentWayPoint();


	
	// magnific popup
	$('.image-popup').magnificPopup({
    type: 'image',
    closeOnContentClick: true,
    closeBtnInside: false,
    fixedContentPos: true,
    mainClass: 'mfp-no-margins mfp-with-zoom', // class to remove default margin from left and right side
     gallery: {
      enabled: true,
      navigateByImgClick: true,
      preload: [0,1] // Will preload 0 - before current, and 1 after the current image
    },
    image: {
      verticalFit: true
    },
    zoom: {
      enabled: true,
      duration: 300 // don't foget to change the duration also in CSS
    }
  });

  $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
    disableOn: 700,
    type: 'iframe',
    mainClass: 'mfp-fade',
    removalDelay: 160,
    preloader: false,

    fixedContentPos: false
  });

  $('[data-toggle="popover"]').popover()
	$('[data-toggle="tooltip"]').tooltip()

})(jQuery);

document.addEventListener("DOMContentLoaded", function () {
    // Handle toggle buttons
    document.querySelectorAll(".toggle-selection").forEach((button) => {
        button.addEventListener("click", function () {
            const selectionBox = this.closest(".product").querySelector(".type-section");
            if (selectionBox.style.display === "none" || selectionBox.style.display === "") {
                selectionBox.style.display = "block"; // Show selection box
                this.innerHTML = "&#9650; Hide Quantity"; // Change symbol to "up arrow" and text
            } else {
                selectionBox.style.display = "none"; // Hide selection box
                this.innerHTML = "&#9660; Select Quantity"; // Change symbol to "down arrow" and text
            }
        });
    });

    // Handle checkboxes and quantity inputs
    document.querySelectorAll(".custom-checkbox input").forEach((checkbox) => {
        checkbox.addEventListener("change", function () {
            const container = this.closest("label").nextElementSibling;
            if (this.checked) {
                container.style.display = "block"; // Show quantity input
            } else {
                container.style.display = "none"; // Hide quantity input
                updateDisplay(container.querySelector(".converted-display"), "0 grams"); // Reset display
            }
        });
    });

    // Convert quantities
    document.querySelectorAll(".quantity-input").forEach((input) => {
        input.addEventListener("input", function () {
            const value = parseInt(this.value);
            const display = this.nextElementSibling;

            if (isNaN(value) || value <= 0) {
                updateDisplay(display, "0 grams");
                return;
            }

            let convertedValue;
            if (value >= 100000) {
                convertedValue = (value / 100000).toFixed(2) + " quintal";
            } else if (value >= 1000) {
                convertedValue = (value / 1000).toFixed(2) + " kg";
            } else {
                convertedValue = value + " grams";
            }

            updateDisplay(display, convertedValue);
        });
    });

    // WhatsApp and Email Button Event Listeners
    document.querySelectorAll(".whatsapp-button").forEach((button) => {
        button.addEventListener("click", function () {
            const product = this.closest(".product");
            const message = generateMessage(product);
            const phoneNumber = "7984371588"; // Your WhatsApp number
            const whatsappUrl = `https://wa.me/${phoneNumber}?text=${message}`;
            this.href = whatsappUrl;
        });
    });

    document.querySelectorAll(".email-button").forEach((button) => {
        button.addEventListener("click", function () {
            const product = this.closest(".product");
            const message = generateMessage(product);
            const email = "dolatramstores@gmail.com"; // Your email
            const subject = "Product Inquiry";
            const emailUrl = `mailto:${email}?subject=${encodeURIComponent(subject)}&body=${message}`;
            this.href = emailUrl;
        });
    });

    // Helper function to update display
    function updateDisplay(element, text) {
        element.textContent = "Converted Weight: " + text;
    }

    // Generate message based on product
    function generateMessage(productElement) {
        const productName = productElement.querySelector("h2").textContent.trim();
        let message = `I am interested in purchasing the following product:\n\nProduct: ${productName}\n`;

        productElement.querySelectorAll(".custom-checkbox input").forEach((checkbox) => {
            if (checkbox.checked) {
                const quantityInput = checkbox.closest("label").nextElementSibling.querySelector("input");
                const converted = quantityInput.nextElementSibling.textContent.replace("Converted Weight: ", "");
                message += `- ${checkbox.value.charAt(0).toUpperCase() + checkbox.value.slice(1)} Quantity: ${converted}\n`;
            }
        });

        return encodeURIComponent(message.trim());
    }
});
