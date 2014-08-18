class CreateKitties < ActiveRecord::Migration
  def change
    create_table :kitties do |t|

      t.timestamps
    end
  end
end
