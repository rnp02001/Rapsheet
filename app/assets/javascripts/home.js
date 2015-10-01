
$(document).ready(function() {

  var series = [['AL', 8], ['AK', 3], ['AZ', 7], ['AR', 8], ['CA', 3], ['CO', 6], ['CT', 7], ['DE', 8], ['DC', 1], ['FL', 6], ['GA', 1], ['HI', 5], ['ID', 1], ['IL', 4], ['IN', 4], ['IA', 5], ['KS', 2], ['KY', 4], ['LA', 6], ['ME', 9], ['MD', 2], ['MA', 7], ['MI', 3], ['MN', 5], ['MS', 4], ['MO', 5], ['MT', 7], ['NE', 2], ['NV', 3], ['NH', 2], ['NJ', 9], ['NM', 7], ['NY', 0], ['NC', 0], ['ND', 6], ['OH', 6], ['OK', 3], ['OR', 1], ['PA', 1], ['RI', 7], ['SC', 1], ['SD', 0], ['TN', 7], ['TX', 9], ['UT', 7], ['VT', 9], ['VA', 2], ['WA', 1], ['WV', 6], ['WI', 2], ['WY', 4], ['US', 9]];

  var paletteScale = d3.scale.linear()
     .domain([0,5,10]) //PSUEDO CODE!!!!!!
     .range(["white", "gray", "black"]);

  var dataset = {};

  series.forEach(function(item){ //
      // item example value ["USA", 70]
      var iso = item[0],
              value = item[1];
      dataset[iso] = { numberOfThings: value, fillColor: paletteScale(value) };
  });

  var map = new Datamap({
      element: document.getElementById('container'),
      scope: 'usa',
      data: dataset,
      responsive: true,
      geographyConfig: {
        highlightFillColor: function(geo) {
            return geo['fillColor'] || '#F5F5F5';
           },
             popupTemplate: function(geo, data) {
                 return ['<div class="hoverinfo"><strong>',
                        geo.properties.name +
                        'Burglary!\n',
                        'Fire!\n',
                        'Kill!\n',
                        'Pillage!\n',
                        '</strong></div>'].join('');
                        //  'Number of things in ' + geo.properties.name,
                        //  ': ' + data.numberOfThings,
                        //  '</strong></div>'].join('');
             }
       }
      //go to https://github.com/markmarkoh/datamaps/blob/master/README.md#custom-popup-on-hover for info on hover-over -- reccomends underscore template
      });
      window.addEventListener('resize', function() {
          map.resize();
      });
  });

  function outputUpdate(year) {
  	document.querySelector('#year').value = year;
  }
