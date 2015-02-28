$(document).ready(function() {
  var json_array = [
    {
      "lat": 33.917364,
      "lng": -117.887618,
      "infowindow" : "<strong>Embassy Suites</strong><br> 900 East Birch St.<br> Brea, California 92821<br><a href='https://goo.gl/maps/krVIj' target='_blank'>(Open in Google Maps)</a>"
    },
    {
      "lat": 33.889204,
      "lng": -117.819104,
      "infowindow" : "<strong>Richard Nixon Library and Museum</strong><br> 18001 Yorba Linda Blvd.<br> Yorba Linda, CA 92886<br><a href='https://goo.gl/maps/F0V6f' target='_blank'>(Open in Google Maps)</a>"
    },
    {
      "lat": 33.986098,
      "lng": -117.826483,
      "infowindow" : "<strong>St. Denis Church</strong><br> 2151 S. Diamond Bar Blvd.<br> Diamond Bar, CA 91765<br><a href='https://goo.gl/maps/li5U8' target='_blank'>(Open in Google Maps)</a>"
    }
  ];

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
        markers = handler.addMarkers(json_array);
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
        markers = handler.addMarkers(json_array);
      }
    );
  }
  else if (window.location.pathname == '/') {
    handler = Gmaps.build('Google');
    handler.buildMap({
        provider: {
          center:          new google.maps.LatLng(33.917364, -117.887618),
          scrollwheel:     false,
          backgroundColor: '#000',
          zoom:             15
        },
        internal: {
          id: 'hotel-map'
        }
      },
      function(){
        markers = handler.addMarkers(json_array);
      }
    );
  }
});