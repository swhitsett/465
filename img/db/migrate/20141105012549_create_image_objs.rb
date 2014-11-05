class CreateImageObjs < ActiveRecord::Migration
  def change
    create_table :image_objs do |t|
      t.string :filename
      t.string :private
      t.string :userid

      t.timestamps
    end
  end
end
