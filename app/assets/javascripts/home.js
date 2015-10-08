$(document).on('ready page:load', function(){
  $("#crime_form").submit();


  $("#crime_form").change(function() {
   $("#crime_form").submit();
  });

  $("#fader").on("input", (function() {
    $("#crime_form").submit();
  }));
});

  var dataManipulators =  function(minimums, maximums, states){
    // var states = [['AL', 8], ['AK', 3], ['AZ', 7], ['AR', 8], ['CA', 3], ['CO', 6], ['CT', 7], ['DE', 8], ['FL', 6], ['GA', 1], ['HI', 5], ['ID', 1], ['IL', 4], ['IN', 4], ['IA', 5], ['KS', 2], ['KY', 4], ['LA', 6], ['ME', 9], ['MD', 2], ['MA', 7], ['MI', 3], ['MN', 5], ['MS', 4], ['MO', 5], ['MT', 7], ['NE', 2], ['NV', 3], ['NH', 2], ['NJ', 9], ['NM', 7], ['NY', 0], ['NC', 0], ['ND', 6], ['OH', 6], ['OK', 3], ['OR', 1], ['PA', 1], ['RI', 7], ['SC', 1], ['SD', 0], ['TN', 7], ['TX', 9], ['UT', 7], ['VT', 9], ['VA', 2], ['WA', 1], ['WV', 6], ['WI', 2], ['WY', 4]];

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

    us_map.legend();
    // broken right now
  // d3.select(window).on('resize', function() {
  //     map.resize();
  // });

  function outputUpdate(year) {
  	document.querySelector('#year').value = year;
    $("#form_year").val(year);
  }
