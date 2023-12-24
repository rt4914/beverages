class AddCategoryIdToBeverages < ActiveRecord::Migration[7.0]
  def change
    add_column :beverages, :category_id, :bigint
    add_index :beverages, :category_id
    remove_column :beverages, :category
  end
end
