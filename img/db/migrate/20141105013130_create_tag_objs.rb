class CreateTagObjs < ActiveRecord::Migration
  def change
    create_table :tag_objs do |t|
      t.string :tag_string
      t.string :img_id

      t.timestamps
    end
  end
end
