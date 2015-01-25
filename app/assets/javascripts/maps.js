$(document).ready(function() {
  if (window.location.pathname == '/ceremony') {
    handler = Gmaps.build('Google');
    handler.buildMap({
        provider: {
          center:          new google.maps.LatLng(33.986098, -117.826483),
          scrollwheel:     false,
          backgroundColor: '#000',
          zoom:             15
        },
        internal: {
          id: 'ceremony-map'
        }
      },
      function(){
        markers = handler.addMarkers([
          {
            "lat": 33.986098,
            "lng": -117.826483,
          }
        ]);
      }
    );
  }
  else if (window.location.pathname == '/reception') {
    handler = Gmaps.build('Google');
    handler.buildMap({
        provider: {
          center:          new google.maps.LatLng(33.889204, -117.819104),
          scrollwheel:     false,
          backgroundColor: '#000',
          zoom:             15
        },
        internal: {
          id: 'reception-map'
        }
      },
      function(){
        markers = handler.addMarkers([
          {
            "lat": 33.889204,
            "lng": -117.819104,
          }
        ]);
      }
    );
  }
})