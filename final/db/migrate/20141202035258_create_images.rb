class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_fname
      t.references :track, index: true
      t.references :user, index: true
      t.references :car, index: true
      t.references :event, index: true
      t.references :access, index: true

      t.timestamps
    end
  end
end
