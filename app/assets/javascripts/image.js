
$(document).ready(function(){
  $('.choose-image').change(function(){
    var photoText = $('.choose-image').val();
    var arr = photoText.split('\\');
    photoText = arr[arr.length-1];
    $('.choose-image').hide();
    $('.style-choose-image').hide();
    $('.submit-image').show();
    $('.upload-button').append('<div class="image-text">'+photoText+'</div>')
  });

});