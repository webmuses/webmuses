$(document).on("ready page:load", function() {
  $('nav ul li a:not(.logo)').each(function() {
   if (jQuery(this).attr('href')  ===  window.location.pathname) {
     jQuery(this).addClass('active');
   }});
  $("ul#tabs").tabs("div.tabs_holder > div", {tabs: 'li'});

  document.createElement("article");
  document.createElement("aside");
  document.createElement("footer");
  document.createElement("header");
  document.createElement("hgroup");
  document.createElement("nav");
});
