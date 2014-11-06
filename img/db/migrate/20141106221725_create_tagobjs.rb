class CreateTagobjs < ActiveRecord::Migration
  def change
    create_table :tagobjs do |t|
      t.string :tag_string
      t.string :img_id

      t.timestamps
    end
  end
end
