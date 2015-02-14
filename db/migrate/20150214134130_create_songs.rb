class CreateSongs < ActiveRecord::Migration
  def change
  	create_table :songs do |t|
		t.string		:title
		t.string		:track_length
		t.belongs_to	:album
	end
  end
end
