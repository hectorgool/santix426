class AddLngToTours < ActiveRecord::Migration
  def change
    add_column :tours, :lng, :float
  end
end
