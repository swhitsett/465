class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_string
      t.string :image_id

      t.timestamps
    end
  end
end
