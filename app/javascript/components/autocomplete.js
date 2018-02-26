// app/javascript/components/autocomplete.js
function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var deviceAddress = document.getElementById('device_address');

    if (deviceAddress) {
      var autocomplete = new google.maps.places.Autocomplete(deviceAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(deviceAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
