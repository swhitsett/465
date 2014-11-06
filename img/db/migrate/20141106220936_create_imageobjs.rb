class CreateImageobjs < ActiveRecord::Migration
  def change
    create_table :imageobjs do |t|
      t.string :filename
      t.string :private
      t.references :tagobj, index: true
      t.references :userobj, index: true

      t.timestamps
    end
  end
end
