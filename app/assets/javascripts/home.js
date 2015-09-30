
$(document).ready(function() {

var map = new Datamap({
    element: document.getElementById('container'),
    scope: 'usa',
    responsive: true,
    geographyConfig: {
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
