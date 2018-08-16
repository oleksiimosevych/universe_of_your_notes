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
$(function() {
    // Define data source for At.JS.
    var datasource = ["Jacob", "Isabella", "Ethan", "Emma", "Michael", "Olivia" ];
 
    // Build data to be used in At.JS config.
    var names = $.map(datasource, function (value, i) {
      return {
        'id': i, 'name': value, 'email': value + "@email.com"
      };
    });
 
    // Define config for At.JS.
    var config = {
      at: "@",
      data: names,
      displayTpl: '<li>${name} <small>${email}</small></li>',
      limit: 200
    }
 
    // Initialize editor.
    $('#froala-editor')
      .on('froalaEditor.initialized', function (e, editor) {
        editor.$el.atwho(config);
 
      	editor.events.on('keydown', function (e) {
          if (e.which == $.FroalaEditor.KEYCODE.ENTER && editor.$el.atwho('isSelecting')) {
            return false;
          }
        }, true);
      })
      .froalaEditor()
  });