class AddAttachmentToTours < ActiveRecord::Migration
  def change
    add_column :tours, :attachment, :string
  end
end
