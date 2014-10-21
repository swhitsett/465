class CreateDoiRefs < ActiveRecord::Migration
  def change
    create_table :doi_refs do |t|
      t.string :url
      t.string :doi_id

      t.timestamps
    end
  end
end
