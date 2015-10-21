$(document).on('ready page:load', function(){
  $("#crime_form").submit();

  $("#crime_form").change(function() {
   $("#crime_form").submit();
  });

  $("#fader").on("input", (function() {
    $("#crime_form").submit();
  }));

  var ctx = document.getElementById("myCanvas").getContext("2d");
  var myGradient = ctx.createLinearGradient(0,0,500,0);
  myGradient.addColorStop(0,"white");
  myGradient.addColorStop(1,"red");
  ctx.fillStyle = myGradient;
  ctx.fillRect(0,0,500,25);
});

  var rawData =  function(minimums, maximums, states){

    var paletteScale = d3.scale.linear()
       .domain([minimums, maximums])
       .range(["white", "red"]);

    var dataset = {};

    states.forEach(function(item){ //
          var state = item[0],
            value = item[1],
            rank = item[2];
          dataset[state] = { crimeRate: value, fillColor: paletteScale(value), ranking: rank };
      });
      us_map(dataset);
  };

  var us_map = function(dataset){
      new Datamap({
      element: document.getElementById('map-container'),
      scope: 'usa',
      data: dataset,
      responsive: true,

      legend: true,// ============ the legend is not working yet
      geographyConfig: {
        highlightFillColor: function(geo) {
            return geo.fillColor || '#F5F5F5';
          },
             popupTemplate: function(geo, data) {
                 return ['<div class="hoverinfo"><strong>',
                         geo.properties.name + "<br>"  + "#" + (data.ranking + 1) + ' in ' + $("#crime :selected").text() + '<br>' + (data.crimeRate/10) + " Incidents" + '<br>' +  'per 100,000 Residents',
                        '</strong></div>'].join('');
             }
       }
      });
    };

    // broken right now
  // d3.select(window).on('resize', function() {
  //     map.resize();
  // });

  function outputUpdate(year) {
  	document.querySelector('#year').value = year;
    $("#form_year").val(year);
  }

$(document).on('ready page:load', function(){

});
