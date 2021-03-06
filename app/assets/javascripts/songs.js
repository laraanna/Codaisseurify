var pathname = window.location.pathname; // Returns path only
var url      = window.location.href;     // Returns full URL

function createSong(title, year_of_release) {
  var newSong = { title: title, year_of_release: year_of_release };

  $.ajax({
    type: "POST",
    url: "" + pathname + "/songs.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);
    var songId = data.id;

    var label_title = $('<label></label>')
      .attr('for', songId)
      .html(title);

    var label_year = $('<label></label>')
      .attr('for', songId)
      .html(year_of_release);

    var label_button = $('<label></label>')
      .attr('for', songId)
      .html("Delete");

    var tableRow = $('<tr class="song"></tr>')
      .attr('data-d', songId)
      .append($('<td>').append(label_title))
      .append($('<td>').append(label_year))
      .append($('<td>').append(label_button));

    $("#songList").append(tableRow);
  })

  .fail(function(error) {
    console.log(error)
    error_message = error.responseJSON.title[0];
  });
}


function submitSong(event) {
  event.preventDefault();

  var title = $("#song_title").val();
  var year_of_release = $("#song_year_of_release").val();
  createSong(title, year_of_release);

  $("#song_title").val(null);
  $("#song_year_of_release").val(null);

}


function findSongDelete(event) {
  event.preventDefault();

  var button = this;
  var tableRow = $(this).parent().parent();
  var songId = tableRow.data('id');

  deleteSong(songId);
};

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "" + pathname + "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();
  });
}

function deleteAllSongs(event) {
  event.preventDefault();

  $.each($(".song"),function(index,tableRow) {
    songId = $(tableRow).data('id');
    deleteSong(songId);
  });
  // $("#songList").html("");
}


$(document).ready(function() {
  $("form").bind('submit', submitSong);
  $(".delete_me").bind('click', findSongDelete);
  $("#delete_all").bind('click', deleteAllSongs);

});
