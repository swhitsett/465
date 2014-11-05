class CreateAccessObjs < ActiveRecord::Migration
  def change
    create_table :access_objs do |t|
      t.string :img_id
      t.string :user_id

      t.timestamps
    end
  end
end
