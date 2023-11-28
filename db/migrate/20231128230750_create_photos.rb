class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :caption
      t.date :posted
      t.integer :like_count
      t.integer :comment_count
      t.text :fans
      t.text :comments
      t.integer :photo_id

      t.timestamps
    end
  end
end
