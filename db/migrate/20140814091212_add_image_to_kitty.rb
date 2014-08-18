class AddImageToKitty < ActiveRecord::Migration
  def change
    add_column :kitties, :image, :string
  end
end
