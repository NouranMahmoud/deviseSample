class AddItemIdToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :item_id, :integer
  end
end
