class RemoveFloorFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :floors, :integer
  end
end
