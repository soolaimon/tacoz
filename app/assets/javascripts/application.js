// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require gmaps
//= require jquery_nested_form
//= require_tree .

$(document).ready(function() {
  loadMap();
});

var loadMap = function () {
  var $map = $('#map');
  if($map.length) {
    var gmap = new GMaps({
      div: '#map',
      lat: $map.data('lat'),
      lng: $map.data('lon')
    });

    gmap.addMarker({
      lat: $map.data('lat'),
      lng: $map.data('lon'),
      title: "Tacoz",
      infoWindow: {
        content: "<p>" + $map.data('address') +"</p>"
      }
    });
  }

  $fullMap = $('#full-map');
  if ($fullMap.length) {
    $.getJSON(('/locations.json'), function (locations) {
      var defaultLocation = locations[0];
      var gmap = new GMaps({
        div: '#full-map',
        lat: defaultLocation.latitude,
        lng: defaultLocation.longitude
      });

      $(locations).each(function(index, location) {
        gmap.addMarker({
          lat: location.latitude,
          lng: location.longitude,
          title: 'Tacoz',
          infoWindow: {
            content: '<p>' + location.address + '</p>'
          }
        });
      });
    });
  }
};