$(document).ready(function(){
  $("#ex13").slider({
    ticks: [1960, 1970, 1980, 1990, 2000, 2010],
    ticks_positions: [0, 20, 40, 60, 80, 100, 120],
    ticks_labels: ['1960', '1970', '1980', '1990', '2000', '2010'],
    ticks_snap_bounds: 30
  })
});
