class CreateDoiTables < ActiveRecord::Migration
  def change
    create_table :doi_tables do |t|
      t.string :name
      t.string :desc
      t.string :url

      t.timestamps
    end
  end
end
