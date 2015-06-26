class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
    	t.string :ann_title
    	t.text :ann_body
    	t.string :image
    	t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
