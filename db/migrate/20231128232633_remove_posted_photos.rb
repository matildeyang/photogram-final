class RemovePostedPhotos < ActiveRecord::Migration[7.0]
  def change
    remove_column :photos, :posted
  end
end
