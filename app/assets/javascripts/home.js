$(document).ready(function(){
  $("#crime_form").submit();

  $(function() {
   $("#crime_form").change(function() {
     $("#crime_form").submit();
   });

   $(function() {
    $("#fader").change(function() {
      $("#crime_form").submit();
    });
  });
 });
});

var nameAbbreviation = [
    {
        "name": "Alabama",
        "abbreviation": "AL"
    },
    {
        "name": "Alaska",
        "abbreviation": "AK"
    },
    {
        "name": "Arizona",
        "abbreviation": "AZ"
    },
    {
        "name": "Arkansas",
        "abbreviation": "AR"
    },
    {
        "name": "California",
        "abbreviation": "CA"
    },
    {
        "name": "Colorado",
        "abbreviation": "CO"
    },
    {
        "name": "Connecticut",
        "abbreviation": "CT"
    },
    {
        "name": "Delaware",
        "abbreviation": "DE"
    },
    {
        "name": "District Of Columbia",
        "abbreviation": "DC"
    },
    {
        "name": "Florida",
        "abbreviation": "FL"
    },
    {
        "name": "Georgia",
        "abbreviation": "GA"
    },
    {
        "name": "Hawaii",
        "abbreviation": "HI"
    },
    {
        "name": "Idaho",
        "abbreviation": "ID"
    },
    {
        "name": "Illinois",
        "abbreviation": "IL"
    },
    {
        "name": "Indiana",
        "abbreviation": "IN"
    },
    {
        "name": "Iowa",
        "abbreviation": "IA"
    },
    {
        "name": "Kansas",
        "abbreviation": "KS"
    },
    {
        "name": "Kentucky",
        "abbreviation": "KY"
    },
    {
        "name": "Louisiana",
        "abbreviation": "LA"
    },
    {
        "name": "Maine",
        "abbreviation": "ME"
    },
    {
        "name": "Maryland",
        "abbreviation": "MD"
    },
    {
        "name": "Massachusetts",
        "abbreviation": "MA"
    },
    {
        "name": "Michigan",
        "abbreviation": "MI"
    },
    {
        "name": "Minnesota",
        "abbreviation": "MN"
    },
    {
        "name": "Mississippi",
        "abbreviation": "MS"
    },
    {
        "name": "Missouri",
        "abbreviation": "MO"
    },
    {
        "name": "Montana",
        "abbreviation": "MT"
    },
    {
        "name": "Nebraska",
        "abbreviation": "NE"
    },
    {
        "name": "Nevada",
        "abbreviation": "NV"
    },
    {
        "name": "New Hampshire",
        "abbreviation": "NH"
    },
    {
        "name": "New Jersey",
        "abbreviation": "NJ"
    },
    {
        "name": "New Mexico",
        "abbreviation": "NM"
    },
    {
        "name": "New York",
        "abbreviation": "NY"
    },
    {
        "name": "North Carolina",
        "abbreviation": "NC"
    },
    {
        "name": "North Dakota",
        "abbreviation": "ND"
    },
    {
        "name": "Ohio",
        "abbreviation": "OH"
    },
    {
        "name": "Oklahoma",
        "abbreviation": "OK"
    },
    {
        "name": "Oregon",
        "abbreviation": "OR"
    },
    {
        "name": "Pennsylvania",
        "abbreviation": "PA"
    },
    {
        "name": "Rhode Island",
        "abbreviation": "RI"
    },
    {
        "name": "South Carolina",
        "abbreviation": "SC"
    },
    {
        "name": "South Dakota",
        "abbreviation": "SD"
    },
    {
        "name": "Tennessee",
        "abbreviation": "TN"
    },
    {
        "name": "Texas",
        "abbreviation": "TX"
    },
    {
        "name": "Utah",
        "abbreviation": "UT"
    },
    {
        "name": "Vermont",
        "abbreviation": "VT"
    },
    {
        "name": "Virginia",
        "abbreviation": "VA"
    },
    {
        "name": "Washington",
        "abbreviation": "WA"
    },
    {
        "name": "West Virginia",
        "abbreviation": "WV"
    },
    {
        "name": "Wisconsin",
        "abbreviation": "WI"
    },
    {
        "name": "Wyoming",
        "abbreviation": "WY"
    }
];

var dataManipulators =  function(minimums, maximums, states){
  var series = states;
  // [['AL', 8], ['AK', 3], ['AZ', 7], ['AR', 8], ['CA', 3], ['CO', 6], ['CT', 7], ['DE', 8], ['DC', 1], ['FL', 6], ['GA', 1], ['HI', 5], ['ID', 1], ['IL', 4], ['IN', 4], ['IA', 5], ['KS', 2], ['KY', 4], ['LA', 6], ['ME', 9], ['MD', 2], ['MA', 7], ['MI', 3], ['MN', 5], ['MS', 4], ['MO', 5], ['MT', 7], ['NE', 2], ['NV', 3], ['NH', 2], ['NJ', 9], ['NM', 7], ['NY', 0], ['NC', 0], ['ND', 6], ['OH', 6], ['OK', 3], ['OR', 1], ['PA', 1], ['RI', 7], ['SC', 1], ['SD', 0], ['TN', 7], ['TX', 9], ['UT', 7], ['VT', 9], ['VA', 2], ['WA', 1], ['WV', 6], ['WI', 2], ['WY', 4], ['US', 9]];

  var paletteScale = d3.scale.linear()
     .domain([minimums, maximums])
     .range(["white", "red"]);

  var dataset = {};

  series.forEach(function(item){ //
        var iso = item[0],
                value = item[1];
        dataset[iso] = { numberOfThings: value, fillColor: paletteScale(value) };
    });
    us_map(dataset);
};

  var us_map = function(dataset){
      new Datamap({
      element: document.getElementById('map-container'),
      scope: 'usa',
      data: dataset,
      responsive: true,
      geographyConfig: {
        highlightFillColor: function(geo) {
            return geo['fillColor'] || '#F5F5F5';
          },
             popupTemplate: function(geo, data) {
                 return ['<div class="hoverinfo"><strong>',
                        geo.properties.name + "<br>" + $("#crime :selected").text() + '<br>' + (data.numberOfThings/10) + " per 100,000",





                        '</strong></div>'].join('');
                        //  'Number of things in ' + geo.properties.name,
                        //  ': ' + data.numberOfThings,
                        //  '</strong></div>'].join('');
             }
       }

      //go to https://github.com/markmarkoh/datamaps/blob/master/README.md#custom-popup-on-hover for info on hover-over -- reccomends underscore template
      });
    };
    //   window.addEventListener('resize', function() {
    //       us_map.resize();
    // });

  function outputUpdate(year) {
  	document.querySelector('#year').value = year;
    $("#form_year").val(year);
  }
