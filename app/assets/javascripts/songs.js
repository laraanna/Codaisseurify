function createSong(title, year_of_release){
  var newSong = {title: title, year_of_release: year_of_release};

  $.ajax({
    type: "POST",
    url: "/songs.json",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "/application/json"
    dataType: "json"
  })
  .done(function(data) {
    console.log(data);


}
