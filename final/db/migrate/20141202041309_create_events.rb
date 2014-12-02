class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_desc
      t.string :event_model
      t.int :event_year
      t.double :event_displacement
      t.int :event_weight
      t.references :user, index: true
      t.references :track, index: true

      t.timestamps
    end
  end
end
