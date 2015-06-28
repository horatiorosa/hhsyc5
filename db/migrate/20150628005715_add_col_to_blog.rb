class AddColToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_title, :string
    add_column :blogs, :blog_body, :text
    add_column :blogs, :image, :string
    add_reference :blogs, :admin, index: true, foreign_key: true
  end
end
