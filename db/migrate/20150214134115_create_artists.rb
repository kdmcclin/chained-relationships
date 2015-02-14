class CreateArtists < ActiveRecord::Migration
  def change
  	create_table :artists do |t|
		t.string 		:name
		t.text			:summary
	end
  end
end
