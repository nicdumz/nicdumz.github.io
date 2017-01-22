// Prevent flash of content.
jQuery('html').addClass('is-hidden');

jQuery(document).ready(function ($) {
  var $menu = $('#nav-menu');

  // Support for Menu toggling.
  $('#nav-toggle').click(function() {
      $(this).toggleClass('is-active');
      $menu.toggleClass('is-active');
  });

  // Add is-active to the correct nav links.
  $("ul.menu-list li a, a.nav-item").each(function(index, elt) {
    if (elt.href == document.location) {
      $(elt).addClass('is-active');
    }
  });

  // Finally loaded.
  jQuery('html').removeClass('is-hidden');
});
