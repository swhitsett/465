class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :car_make
      t.string :car_model
      t.integer :car_year
      t.float :car_displacement
      t.integer :car_weight
      t.string :car_desc
      t.references :image, index: true

      t.timestamps
    end
  end
end
