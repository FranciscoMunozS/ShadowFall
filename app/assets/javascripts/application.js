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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require select2
//= require activestorage
//= require datatables
//= require_tree .

$(document).ready(function() {
  $("#dttb").dataTable({
    language: {
        url: 'https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json'
    }
  });
});

$(document).ready(function(){
  $('.datepicker').datepicker({
    format: "dd/mm/yyyy",
    language: "es",
    startDate: "today",
  });
});

$(document).ready(function(){
  $("#period_employee_id").select2({
    theme: "bootstrap"
  });
});
