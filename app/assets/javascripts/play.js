(function() {
  'use strict';
  function updateAndSubmitForm(year){
    $("#year").val(year);
    $("#form_year").val(year);
    $("#crime_form").submit();
  }
  function toggleFader(){
    $("#fader").toggle();
  }

  function play(){
    toggleFader();
    var startYear = 1965;
    var endYear = 2012;
    var i = startYear;
    updateAndSubmitForm(i);
    $("#crime_form").on("ajax:success", function(e, data, status, xhr){
      // Until your max year
      i += 1;
      updateAndSubmitForm(i);
      if (i === 2012) {
        $("#crime_form").off("ajax:success");
        toggleFader();
      }
    });

    $("#crime_form").on("ajax:error",  function(e, xhr, status, error){
      console.log('Error with Play');
    });
  }
  $(function(){
    $("#play-button").click(function(e){
      e.preventDefault();
      play();
    });
  });
}());
