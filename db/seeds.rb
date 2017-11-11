Artist.destroy_all
Song.destroy_all

#artists
artist_1 = Artist.create!(
  name: "Adrian Ström" ,
  genre: "Dance/Electro" ,
  bio: "Creates music and captures moments of life with his camera.
  Both things come in handy when mixing them into his videos clips.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/adrian_rndige.jpg"
)

artist_2 = Artist.create!(
  name: "Bilderbuch" ,
  genre: "Rock" ,
  bio: "Bilderbuch is an Austrian rock band, formed in Kremsmünster, Austria in 2005.
  Since 2008, the band has been based in Vienna.
  The current band members are Maurice Ernst, Peter Horazdovsky, Michael Krammer and Phillipp Scheibl",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/bilderbuch_wrmrj3.jpg"
)

artist_3 = Artist.create!(
  name: "Billy Joel" ,
  genre: "Rock music, Rock and roll, Soft rock, Pop music" ,
  bio: "William Martin Joel is an American singer-songwriter and pianist.
  He was born in the Bronx, New York, and raised on Long Island, New York,
  places which have a heavy influence on his songs.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/billy_tigrfd.jpg"
)

artist_4 = Artist.create!(
  name: "Aminé" ,
  genre: "Alternative Hip Hop",
  bio: "Adam Aminé Daniel, professionally known as Aminé, is an American rapper.
  He is best known for his commercial debut single, 'Caroline', which peaked at number 11 on the US Billboard Hot 100 chart.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510389935/amine_ehxgxa.jpg"
)

artist_5 = Artist.create!(
  name: "Paul Kalkbrenner" ,
  genre: "Techno/Electronic",
  bio: "Paul Kalkbrenner is a German live act, producer of electronic music, and actor from Berlin.
  Because he breaks down his tracks into elements that are reassembled onstage, Kalkbrenner is considered a live act,
  as opposed to a DJ.He is most known for his single 'Sky and Sand', which sold over 200,000 copies, went platinum, and was
  highly charted in countries such as Belgium and Germany.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510435059/paul_k2ukdr.jpg"
)

artist_6 = Artist.create!(
  name: "Möwe" ,
  genre: "Dance/electronic, Metal",
  bio: "Mel&Clem are the creators of MÖWE.
  This charismatic Viennese duo could not have expected that something which sprouted from
  boredom on January 10th 2013 would lead to far more. But let´s start at the beginning:
  Mel is a tattooed and cheeky rebel, was a member of many Indie-Rock bands previously,
  including Mary lost her Pathos. Clemens, a charming, young heartbreaker was also involved with bands previously,
  including Mary Lost Her Pathos as the group’s bass player.",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510433870/Moewe_ymbjcm.jpg"
)



artist_7 = Artist.create!(
  name: "Moby" ,
  genre: "Dance",
  bio: "One of electronic music's most visible and talked-about figures,
  Moby's career comprises many years of work and many musical twists and turns.
  His career stretches all the way back to early rave and acid-house releases in the late 80s and early 90s as U.H.F.
  and Voodoo Child, through to his much loved/hated R&B/blues/pop/techno sample cut-ups of today. ",
  remote_image_url: "http://res.cloudinary.com/dtvsqvonc/image/upload/v1510433871/Moby_fuoc98.jpg"
)



#songs

song_1 = Song.create!( title: "Pensée sur l'amour", year_of_release:2016, artist: artist_1 )
song_2 = Song.create!( title: "Somewhere Inside", year_of_release:2016, artist: artist_1 )

song_3 = Song.create!( title: "Bungalow", year_of_release:2017, artist: artist_2 )
song_4 = Song.create!( title: "Baba", year_of_release:2017, artist: artist_2 )

song_5 = Song.create!( title: "Piano Man", year_of_release:1973, artist: artist_3 )
song_6 = Song.create!( title: "Uptown Girl", year_of_release:1983, artist: artist_3 )
song_7 = Song.create!( title: "Vienna", year_of_release:1977, artist: artist_3 )

song_8 = Song.create!( title: "caroline", year_of_release:2017, artist: artist_4 )
song_9 = Song.create!( title: "Broccoli", year_of_release:2015, artist: artist_4 )

song_10 = Song.create!( title: "Feed Your Head", year_of_release:2015, artist: artist_5 )
song_11 = Song.create!( title: "Sky And Sand", year_of_release:2008, artist: artist_5 )

song_12 = Song.create!( title: "Back In The Summer", year_of_release:2016, artist: artist_6 )

song_13 = Song.create!( title: "In My Heart", year_of_release:2002, artist: artist_7 )
song_14 = Song.create!( title: "Why Does My Heart Feel So Bad?", year_of_release:1999, artist: artist_7 )
