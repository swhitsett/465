class CreateImageusrs < ActiveRecord::Migration
  def change
    create_table :imageusrs do |t|
      t.references :imageobj, index: true
      t.references :userobj, index: true

      t.timestamps
    end
  end
end
