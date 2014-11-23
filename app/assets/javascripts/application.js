//= require jquery
//= require jquery_ujs
//= require react
//= require i18n
//= require i18n/translations
//= require froala_editor.min.js
//= require plugins/file_upload.min.js
//= require plugins/font_family.min.js
//= require plugins/tables.min.js
//= require plugins/video.min.js
//= require plugins/lists.min.js
//= require langs/ru.js

$(document).ready(function() {
  $("#navbar").find("li").each(function() {
    if (document.URL == this.children[0]) {
      $(this).addClass("active");
    }
  });
  $(".close").click(function() {
    $(".alert").hide();
  });
});
