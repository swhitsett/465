class CreateAccesses < ActiveRecord::Migration
  def change
    create_table :accesses do |t|
      t.references :user, index: true
      t.references :image, index: true

      t.timestamps
    end
  end
end
