Artist.create!([
	{name: "Adele", summary: "I don’t know she’s young and British and so on pretend this is a long paragraph..."},
	{name: "Gaelic Storm", summary: "They have a rotating crew of female fiddle players who always drop out of the band when they have children.  Their lead singer is a Packers fan so it’s all good."},
	{name: "Parker Millsap", summary: "Influenced by the dust-bowl neutrality of John Steinbeck, Millsap s memorable creations include the wife-murdering bible-thumper of Old Time Religion, the self- made church-on-wheels minister in Truck Stop Gospel, the questioning believer of When I Leave, the meth cooks in Quite Contrary and the gambler who spends all his money buying lottery tickets in Yosemite."},
	{name: "Mary Chapin Carpenter", summary: "Mary Chapin Carpenter (born February 21, 1958) is an American singer, songwriter and musician. Carpenter spent several years singing in Washington, D.C., clubs before signing in the late 1980s with Columbia Records, who marketed her as a country singer."}
	])

Album.create!([
	{title: "Stones in the Road", year_released: "1994", artist_id: 4},
	{title: "Palisade", year_released: "2012", artist_id: 2},
	{title: "Come On Come On", year_released: "1992", artist_id: 4},
	{title: "21", year_released: "2011", artist_id: 1},
	{title: "19", year_released: "2008", artist_id: 1},
	{title: "Parker Millsap", year_released: "2014", artist_id: 3},
	{title: "Cabbage", year_released: "2010", artist_id: 2}
	])

Song.create!([
	{title: "Quite Contrary", track_length: "4:48", album_id: 6},
	{title: "Rolling in the Deep", track_length: "3:47", album_id: 4},
	{title: "Why Walk When You Can Fly?", track_length: "3:31", album_id: 1},
	{title: "Just Ran Out of Whiskey", track_length: "4:18", album_id: 7},
	{title: "Rum Runners", track_length: "3:38", album_id: 7},
	{title: "I Take My Chances", track_length: "3:47", album_id: 3},
	{title: "Homeless", track_length: "3:13", album_id: 2},
	{title: "Yosemite", track_length: "2:53", album_id: 6},
	{title: "Old Time Religion", track_length: "3:54", album_id: 6}
	])