class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
		t.string 		:title
		t.date 			:year_released
		t.belongs_to	:artist
	end
  end
end
