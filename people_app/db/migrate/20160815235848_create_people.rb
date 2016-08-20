class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :person do |t|
      t.string :name
      t.string :bio

      t.timestamps
    end
  end
end
