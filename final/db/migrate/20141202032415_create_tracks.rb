class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :track_name
      t.string :track_location
      t.string :track_desc
      t.references :l_time, index: true
      t.references :image, index: true
      t.references :event, index: true
      t.references :access, index: true

      t.timestamps
    end
  end
end
