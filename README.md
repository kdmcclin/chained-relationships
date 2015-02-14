This repository contains an example of three tables with chained one-to-many relationships, created as an example for TIY DC's Rails Engineering course.  Feel free to take it and alter it to suit your purposes.  If you use the same database setup that I've got (using PostgreSQL) you can run the rake task for the seeds with rake db:seed.  If you don't use the same database setup you can just copy & paste them into your console.

If you had this set up you might create a new song for an existing album and existing artist with something like the following syntax:

	Artist.find(1).albums.find(5).songs.create(title: “Make You Feel My Love", track_length: “3:32”)

That would create a track entry for the song “Make You Feel My Love” on the album “19”.  (Random note: apparently Bob Dylan wrote that.  Thanks wikipedia!)  If you then wanted to know the artist of that song for whatever reason, you could run the following query:

	Song.find_by(title: “Make You Feel My Love”).album.artist.name

There are other ways to set this up, perhaps better ways depending on what you want your database to support, but this works.
