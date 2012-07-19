class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :tipe
      t.string :imageUrl
      t.string :store
      t.string :price
      t.string :description

      t.timestamps
    end
  end
end
