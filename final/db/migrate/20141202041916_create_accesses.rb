class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.references :track, index: true
      t.references :user, index: true
      t.references :event, index: true
      t.references :image, index: true
      t.references :car, index: true

      t.timestamps
    end
  end
end
