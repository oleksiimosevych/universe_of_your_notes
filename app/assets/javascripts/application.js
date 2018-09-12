// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

   

    var settings = {
    //height of sphere container
    height: '600',
    //width of sphere container
    width: '1100',
    //radius of sphere
    radius: 250,
    //rotation speed
    speed: 0.2,
    //sphere rotations slower
    slower: 0.3,
    //delay between update position
    timer: 5,
    //dependence of a font size on axis Z
    fontMultiplier: 20,
    //tag css stylies on mouse over
    hoverStyle: {
        border: 'none',
        color: '#0b2e6f'
    },
    //tag css stylies on mouse out
    mouseOutStyle: {
        border: '',
        color: ''
    }
    };

$('#myCollapse').collapse();
    

// $(document).ready(function() {
//    if( ! $('#myCanva2s').tagcanvas({
//      textColour : '#000',
//      outlineThickness : 2,
//      maxSpeed : 0.13,
//      depth : 0.85
//    })) {
//      // TagCanvas failed to load
//      $('#myCanva2sContainer').hide();
//    }
//    // your other jQuery stuff here...
//  });

