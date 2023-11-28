class RemoveFansFromPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :fans
  end
end
