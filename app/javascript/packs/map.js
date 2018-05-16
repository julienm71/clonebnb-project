import GMaps from 'gmaps/gmaps.js';


const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(10);
  } else {
    map.fitLatLngBounds(markers);
  }
}


// [...]
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var flatAddress = document.getElementById('submit-search-value');

    if (flatAddress) {
      var autocomplete = new google.maps.places.Autocomplete(flatAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(flatAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
