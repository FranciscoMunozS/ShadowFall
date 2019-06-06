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

$(document).ready(function(){
  $("#rut").Rut();
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
    language: "es"
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
    theme: "bootstrap",
    language: "es"
  });
});


$(document).ready(function($) {
  "use strict"; // Start of use strict

  // Toggle the side navigation
  $("#sidebarToggle, #sidebarToggleTop").on('click', function(e) {
    $("body").toggleClass("sidebar-toggled");
    $(".sidebar").toggleClass("toggled");
    if ($(".sidebar").hasClass("toggled")) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Close any open menu accordions when window is resized below 768px
  $(window).resize(function() {
    if ($(window).width() < 768) {
      $('.sidebar .collapse').collapse('hide');
    };
  });

  // Prevent the content wrapper from scrolling when the fixed side navigation hovered over
  $('body.fixed-nav .sidebar').on('mousewheel DOMMouseScroll wheel', function(e) {
    if ($(window).width() > 768) {
      var e0 = e.originalEvent,
        delta = e0.wheelDelta || -e0.detail;
      this.scrollTop += (delta < 0 ? 1 : -1) * 30;
      e.preventDefault();
    }
  });

  // Scroll to top button appear
  $(document).on('scroll', function() {
    var scrollDistance = $(this).scrollTop();
    if (scrollDistance > 100) {
      $('.scroll-to-top').fadeIn();
    } else {
      $('.scroll-to-top').fadeOut();
    }
  });

  // Smooth scrolling using jQuery easing
  $(document).on('click', 'a.scroll-to-top', function(e) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top)
    }, 1000, 'easeInOutExpo');
    e.preventDefault();
  });

})(jQuery); // End of use strict
