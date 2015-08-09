class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
    	t.string :alb_caption
    	t.string :alb_desc
    	t.string :image
    	
      t.timestamps null: false
    end
  end
end
