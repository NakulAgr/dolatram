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
    const products = document.querySelectorAll(".product");

    products.forEach((product) => {
        const toggleButton = product.querySelector(".toggle-selection");
        const selectionBox = product.querySelector(".type-section");
        const checkboxes = product.querySelectorAll(".custom-checkbox input");
        const whatsappButton = product.querySelector(".whatsapp-button");
        const emailButton = product.querySelector(".email-button");

        toggleButton.addEventListener("click", function () {
            if (selectionBox.style.display === "none" || selectionBox.style.display === "") {
                selectionBox.style.display = "block";
                toggleButton.innerHTML = "&#9650; Hide Quantity";
            } else {
                selectionBox.style.display = "none";
                toggleButton.innerHTML = "&#9660; Select Quantity";
            }
        });

        checkboxes.forEach((checkbox) => {
            const type = checkbox.id;
            const container = product.querySelector(`#${type}-quantity-container`);
            const display = product.querySelector(`#${type}-quantity-display`);

            checkbox.addEventListener("change", function () {
                if (checkbox.checked) {
                    container.style.display = "block";
                } else {
                    container.style.display = "none";
                    updateDisplay(display, "0 grams");
                }
            });

            const input = product.querySelector(`#${type}-quantity`);
            input.addEventListener("input", function () {
                const value = parseInt(input.value);
                let convertedValue = "0 grams";

                if (value > 0) {
                    if (value >= 100000) {
                        convertedValue = (value / 100000).toFixed(2) + " quintal";
                    } else if (value >= 1000) {
                        convertedValue = (value / 1000).toFixed(2) + " kg";
                    } else {
                        convertedValue = value + " grams";
                    }
                }

                updateDisplay(display, convertedValue);
            });
        });

        function updateDisplay(display, text) {
            display.textContent = "Converted Weight: " + text;
        }

        function generateMessage() {
            const productName = product.dataset.name;
            let message = `I am interested in purchasing the following product:\n\nProduct: ${productName}\n`;

            checkboxes.forEach((checkbox) => {
                if (checkbox.checked) {
                    const type = checkbox.id;
                    const display = product.querySelector(`#${type}-quantity-display`).textContent.replace("Converted Weight: ", "");
                    message += `- ${type.charAt(0).toUpperCase() + type.slice(1)} Quantity: ${display}\n`;
                }
            });

            return encodeURIComponent(message.trim());
        }

        whatsappButton.addEventListener("click", function () {
            const phoneNumber = "7984371588";
            const message = generateMessage();
            whatsappButton.href = `https://wa.me/${phoneNumber}?text=${message}`;
        });

        emailButton.addEventListener("click", function () {
            const email = "dolatramstores@gmail.com";
            const subject = "Product Inquiry";
            const body = generateMessage();
            emailButton.href = `mailto:${email}?subject=${encodeURIComponent(subject)}&body=${body}`;
        });
    });
});
