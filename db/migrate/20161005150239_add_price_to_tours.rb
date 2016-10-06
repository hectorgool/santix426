class AddPriceToTours < ActiveRecord::Migration
  def change
    add_column :tours, :price, :decimal
  end
end
