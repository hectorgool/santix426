class AddLatToTours < ActiveRecord::Migration
  def change
    add_column :tours, :lat, :float
  end
end
