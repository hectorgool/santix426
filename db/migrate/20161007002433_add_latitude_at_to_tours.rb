class AddLatitudeAtToTours < ActiveRecord::Migration
  def change
    add_column :tours, :latitude, :decimal, {:precision=>10, :scale=>6}
  end
end
