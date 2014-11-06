class CreateImageusrs < ActiveRecord::Migration
  def change
    create_table :imageusrs do |t|
      t.string :img_id
      t.string :user_id
      t.refrences :userobj
      t.refrences :imageobj

      t.timestamps
    end
  end
end
