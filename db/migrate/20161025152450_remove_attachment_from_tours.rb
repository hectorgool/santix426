class RemoveAttachmentFromTours < ActiveRecord::Migration
  def change
    remove_column :tours, :attachment, :string
  end
end
