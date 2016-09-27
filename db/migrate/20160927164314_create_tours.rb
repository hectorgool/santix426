class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
