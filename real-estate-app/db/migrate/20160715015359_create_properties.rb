class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.text    :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.decimal :bathrooms
      t.integer :floors
      t.date    :availability
      t.integer :price
      
      t.timestamps
    end
  end
end
