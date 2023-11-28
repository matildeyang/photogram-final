class RemovePhotoIdPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :photo_id
  end
end
