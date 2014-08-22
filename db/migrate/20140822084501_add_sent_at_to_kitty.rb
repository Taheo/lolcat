class AddSentAtToKitty < ActiveRecord::Migration
  def change
    add_column :kitties, :sent_at, :datetime
  end
end
