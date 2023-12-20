class CreateBeverages < ActiveRecord::Migration[7.0]
  def change
    create_table :beverages do |t|
      t.string :name
      t.string :category
      t.string :packaging
      t.integer :price

      t.timestamps
    end
  end
end
