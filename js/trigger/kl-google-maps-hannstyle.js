;(function($){
	"use strict";

	$(document).ready(function() {

		/*
		Find the Latitude and Longitude of your address:
			- http://itouchmap.com/latlong.html
			- http://universimmedia.pagesperso-orange.fr/geo/loc.htm
			- http://www.findlatitudeandlongitude.com/find-address-from-latitude-and-longitude/
		
		Find settings explained:
			- https://github.com/marioestrada/jQuery-gMap

		*/
			
		// Map Markers
		var mapMarkers = [{
			address: "Elias Aguirre 798, Chiclayo 14001",
			latitude: -6.771697,
			longitude: -79.8407005,
			icon: {
				image: "images/map-marker.png",
				iconsize: [32, 39], // w, h
				iconanchor: [13,39] // x, y
			},
			html: '<div style="width: 300px; padding: 15px;"><h3 style="margin-bottom: 15px;">Hogash Studio</span></h3><p class="nobottommargin"><span style="line-height:1.4;">KALLYAS TEMPLATE, THE <span class="fw-semibold">SWISS ARMY SECRET</span> FOR BUILDING THE MODERN WEBSITE</span></p></div>',
		},{
			address: "Elias Aguirre 798, Chiclayo 14001",
			latitude: -6.771697,
			longitude: -79.8407005,
			icon: {
				image: "images/map-marker.png",
				iconsize: [32, 39], // w, h
				iconanchor: [13, 39] // x, y
			},
			html: '<div style="width: 300px; padding: 15px;"><h3 style="margin-bottom: 15px;">Hogash Studio</span></h3><p class="nobottommargin"><span style="line-height:1.4;">KALLYAS TEMPLATE, THE <span class="fw-semibold">SWISS ARMY SECRET</span> FOR BUILDING THE MODERN WEBSITE</span></p></div>',
		}];
		
		// Map Color Scheme - more styles here http://snazzymaps.com/
		var mapStyles = [
		    {
		        "featureType": "landscape",
		        "stylers": [
		            {
		                "saturation": -100
		            },
		            {
		                "lightness": 60
		            }
		        ]
		    },
		    {
		        "featureType": "road.local",
		        "stylers": [
		            {
		                "saturation": -100
		            },
		            {
		                "lightness": 40
		            },
		            {
		                "visibility": "on"
		            }
		        ]
		    },
		    {
		        "featureType": "transit",
		        "stylers": [
		            {
		                "saturation": -100
		            },
		            {
		                "visibility": "simplified"
		            }
		        ]
		    },
		    {
		        "featureType": "administrative.province",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "water",
		        "stylers": [
		            {
		                "visibility": "on"
		            },
		            {
		                "lightness": 30
		            }
		        ]
		    },
		    {
		        "featureType": "road.highway",
		        "elementType": "geometry.fill",
		        "stylers": [
		            {
		                "color": "#ef8c25"
		            },
		            {
		                "lightness": 40
		            }
		        ]
		    },
		    {
		        "featureType": "road.highway",
		        "elementType": "geometry.stroke",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "poi.park",
		        "elementType": "geometry.fill",
		        "stylers": [
		            {
		                "color": "#b6c54c"
		            },
		            {
		                "lightness": 40
		            },
		            {
		                "saturation": -40
		            }
		        ]
		    },
		    {}
		];
		
		// Map Initial Location
		var initLatitude = -6.771697;
		var initLongitude = -79.8407005;

		// Map Extended Settings
		var map = jQuery(".th-google_map").gMap({
			controls: {
				panControl: true,
				zoomControl: true,
				zoomControlOptions: {
					position: google.maps.ControlPosition.RIGHT_CENTER
				},
				mapTypeControl: true,
				scaleControl: true,
				streetViewControl: true,
				streetViewControlOptions: {
					position: google.maps.ControlPosition.RIGHT_CENTER
				},
				overviewMapControl: true
			},
			scrollwheel: false,
			markers: mapMarkers,
			latitude: initLatitude,
			longitude: initLongitude,
			zoom: 13,
			style: mapStyles,
			draggable: Modernizr.touch ? false : true
		});
	});// end of document ready

})(jQuery);


