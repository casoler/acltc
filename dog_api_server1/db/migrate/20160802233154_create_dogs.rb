class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :dog_group
      t.string :image

      t.timestamps
    end
  end
end
