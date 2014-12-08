class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_desc
      t.string :event_model
      t.integer :event_year
      t.float :event_displacement
      t.integer :event_weight
      t.references :user, index: true
      t.references :track, index: true

      t.timestamps
    end
  end
end
