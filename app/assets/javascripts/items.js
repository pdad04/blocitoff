// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


window.onload = function() {
  var tRow = document.getElementsByClassName('tlist');

  for (const row of tRow){
    row.addEventListener('ajax:success', function(event){
      var i = event.target.parentNode.parentNode.rowIndex;
      document.getElementById('tasks-list').deleteRow(i);
      document.getElementById('item_name').focus();
    });
  }
}
