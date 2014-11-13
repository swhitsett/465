class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :filename
      t.string :private
      t.references :user, index: true
      t.references :tag, index: true
      t.references :access, index: true

      t.timestamps
    end
  end
end
