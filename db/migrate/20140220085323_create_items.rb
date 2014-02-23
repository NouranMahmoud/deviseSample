class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :listingtype
      t.integer :price
      t.string :purpose
      t.integer :area
      t.text :description
      t.timestamps
    end
  end
end
