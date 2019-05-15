$(document).ready(function(){
  toastr.options = {
    "closeButton": false,
    "debug": false,
    "positionClass": "toast-top-right",
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }
});

$(document).ready(function() {
  $("#dttb").dataTable({
    language: {
        url: 'https://cdn.datatables.net/plug-ins/1.10.19/i18n/Spanish.json'
    }
  });
});

$(document).ready(function() {
  $('#permanences').on('cocoon:before-insert', function(e,task_to_be_added) {
    task_to_be_added.fadeIn('slow');
  })
});

$(document).ready(function() {
  $('#permanences').on('cocoon:before-remove', function(e, task) {
    $(this).data('remove-timeout', 1000);
    task.fadeOut('slow');
  });
});

$(document).ready(function(){
  $('.datepicker').datepicker({
    format: "dd/mm/yyyy",
    language: "es",
    startDate: "today",
  });
  $('#permanences').on('cocoon:after-insert', function(e, insertedItem) {
    $('.datepicker').datepicker({
      format: "dd/mm/yyyy",
      language: "es",
      startDate: "today",
    });
  });
});

$(document).ready(function(){
  $("#period_employee_id").select2({
    theme: "bootstrap"
  });
});
