$(document).ready(function(){
  $('#profile-image').click(
    function(){
      var curr_state = $('#profile-nav').css('display');
      if(curr_state == 'block'){
        $('#profile-nav').hide();
      }else{
        $('#profile-nav').show();
      }
    }
  );
});