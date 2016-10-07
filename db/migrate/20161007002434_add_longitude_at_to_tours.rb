class AddLongitudeAtToTours < ActiveRecord::Migration
  def change
    add_column :tours, :longitude, :decimal, {:precision=>10, :scale=>6}
  end
end
