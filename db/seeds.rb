Artist.destroy_all
Song.destroy_all

#artists
adrian = Artist.create!(
  name: "Adrian Ström" ,
  genre: "Dance/Electro" ,
  bio: "Creates music and captures moments of life with his camera.
  Both things come in handy when mixing them into his videos clips.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/adrian_rndige.jpg"
)

bilderbuch = Artist.create!(
  name: "Bilderbuch" ,
  genre: "Rock" ,
  bio: "Bilderbuch is an Austrian rock band, formed in Kremsmünster, Austria in 2005.
  Since 2008, the band has been based in Vienna.
  The current band members are Maurice Ernst, Peter Horazdovsky, Michael Krammer and Phillipp Scheibl",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/bilderbuch_wrmrj3.jpg"
)

billy = Artist.create!(
  name: "Billy Joel" ,
  genre: "Rock music, Rock and roll, Soft rock, Pop music" ,
  bio: "William Martin Joel is an American singer-songwriter and pianist.
  He was born in the Bronx, New York, and raised on Long Island, New York,
  places which have a heavy influence on his songs.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/billy_tigrfd.jpg"
)

amine = Artist.create!(
  name: "Aminé" ,
  genre: "Alternative Hip Hop",
  bio: "Adam Aminé Daniel, professionally known as Aminé, is an American rapper.
  He is best known for his commercial debut single, 'Caroline', which peaked at number 11 on the US Billboard Hot 100 chart.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/amine_ehxgxa.jpg"
)



#songs

amour = Song.create!( title: "Pensée sur l'amour", year_of_release:2016, artist: adrian )
somewhere_inside = Song.create!( title: "Somewhere Inside", year_of_release:2016, artist: adrian )

bungalow = Song.create!( title: "Bungalow", year_of_release:2017, artist: bilderbuch )
baba = Song.create!( title: "Baba", year_of_release:2017, artist: bilderbuch )

piano_man = Song.create!( title: "Piano Man", year_of_release:1973, artist: billy )
uptown_girl = Song.create!( title: "Uptown Girl", year_of_release:1983, artist: billy )
vienna = Song.create!( title: "Vienna", year_of_release:1977, artist: billy )

caroline = Song.create!( title: "caroline", year_of_release:2017, artist: amine )
broccoli = Song.create!( title: "Broccoli", year_of_release:2015, artist: amine )
