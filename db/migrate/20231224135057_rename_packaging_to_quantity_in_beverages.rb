class RenamePackagingToQuantityInBeverages < ActiveRecord::Migration[7.0]
  def change
    rename_column :beverages, :packaging, :quantity
  end
end
