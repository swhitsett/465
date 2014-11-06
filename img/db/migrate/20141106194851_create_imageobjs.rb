class CreateImageobjs < ActiveRecord::Migration
  def change
    create_table :imageobjs do |t|
      t.string :filename
      t.string :private
      t.string :user_id
      t.references :userobj
      t.references :tagobj

      t.timestamps
    end
  end
end
