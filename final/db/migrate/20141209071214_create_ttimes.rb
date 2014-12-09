class CreateTtimes < ActiveRecord::Migration
  def change
    create_table :ttimes do |t|
      t.integer :minutes
      t.integer :seconds
      t.integer :miliseconds
      t.references :car, index: true
      t.references :user, index: true
      t.references :track, index: true

      t.timestamps
    end
  end
end
