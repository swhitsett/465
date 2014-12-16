class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_desc
      t.integer :cost
      t.string :event_model
      t.integer :event_year
      t.float :event_displacement
      t.integer :event_weight
      t.string :date
      t.references :user, index: true
      t.references :track, index: true
      t.references :image, index: true
      t.references :access, index: true

      t.timestamps
    end
  end
end
