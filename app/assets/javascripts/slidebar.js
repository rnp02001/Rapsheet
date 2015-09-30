$(document).ready(function(){
  $("#ex13").slider({
    ticks: [0, 100, 200, 300, 400],
    ticks_positions: [0, 30, 60, 70, 90, 100],
    ticks_labels: ['$0', '$100', '$200', '$300', '$400'],
    ticks_snap_bounds: 30
  })
}); 
