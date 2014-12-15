// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Isotope
var $container = $('#messages-container');

$container.isotope({
  itemSelector: '.message-box',
  layoutMode: 'masonry'
});