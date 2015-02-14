This repository contains an example of three tables with chained one-to-many relationships, created as an example for TIY DC's Rails Engineering course.  Feel free to take it and alter it to suit your purposes.  If you use the same database setup that I've got (using PostgreSQL) you can run the rake task for the seeds with <pre>rake db:seed</pre>.  If you don't use the same database setup you can just copy & paste them into your console.

Keep in mind that one can use belongs_to, references, or integer depending on preference, but there are different rules to using integer for relationships.  Choose whichever makes sense to you, but only use one of them.

Yes multiple artists can collaborate on the same album or the same song, and sometimes albums contain the same songs that were on an earlier album, but for the sake of example an album only belongs to one artist and a song only belongs to one album.

Artist Table (with seeds)  

| id | name                  | summary                                                                                                                                                                                                                                                                                                                                                                         |
|----|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1  | "Adele"               | “I don’t know she’s young and British and so on pretend this is a long paragraph...”                                                                                                                                                                                                                                                                                            |
| 2  | "Gaelic Storm"        | “They have a rotating crew of female fiddle players who always drop out of the band when they have children.,Their lead singer is a Packers fan so it’s all good.”                                                                                                                                                                                                              |
| 3  | "Parker Millsap"      | “Influenced by the dust-bowl neutrality of John Steinbeck, Millsap s memorable creations include the wife-murdering bible-thumper of Old Time Religion, the self- made church-on-wheels minister in Truck Stop Gospel, the questioning believer of When I Leave, the meth cooks in Quite Contrary and the gambler who spends all his money buying lottery tickets in Yosemite.” |
| 4  | Mary Chapin Carpenter | “Mary Chapin Carpenter (born February 21, 1958) is an American singer, songwriter and musician. Carpenter spent several years singing in Washington, D.C., clubs before signing in the late 1980s with Columbia Records, who marketed her as a country singer.”                                                                                                                 |

If you had this set up you might create a new song for an existing album and existing artist with something like the following syntax:

	Artist.find(1).albums.find(5).songs.create(title: “Make You Feel My Love", track_length: “3:32”)

That would create a track entry for the song “Make You Feel My Love” on the album “19”.  (Random note: apparently Bob Dylan wrote that.  Thanks wikipedia!)  If you then wanted to know the artist of that song for whatever reason, you could run the following query:

	Song.find_by(title: “Make You Feel My Love”).album.artist.name

There are other ways to set this up, perhaps better ways depending on what you want your database to support, but this works.
