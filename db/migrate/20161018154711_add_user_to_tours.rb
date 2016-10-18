class AddUserToTours < ActiveRecord::Migration
  def change
    add_reference :tours, :user, index: true, foreign_key: true
  end
end
