function createSong(title, year_of_release){
  var newSong = {title: title, year_of_release: year_of_release};

  $.ajax({
    type: "POST",
    url: "/api/artists/${<%= @artist.id %>/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "/application/json"
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);

    var songId = data.id;

    var label = $('<label></label>')
      .attr('for', songId)
      .html(title);

    var tableRow = $('<tr class="todo"></td>')
      .attr('data-id', songId)
      .append($('<td>').append(label));

    $("#songList").append(tableRow);

  })

  .fail(function(error) {
    console.log(error)
    error_message = error.responseJSON.title[0];
    showError(error_message);
  });

}

function submitSong(event) {
  event.preventDefault();
  resetErrors();
  createSong($("#song_title").val());
  $("#song_title").val(null);

}

$(document).ready(function() {
  $("#addSong").bind('click', submitSong);

});
