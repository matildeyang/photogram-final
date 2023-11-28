class RemoveCommentsPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :comments
  end
end
