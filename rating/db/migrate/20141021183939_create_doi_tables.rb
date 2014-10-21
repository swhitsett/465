class CreateDoiTables < ActiveRecord::Migration
  def change
    create_table :doi_tables do |t|
      t.string :url
      t.string :desc

      t.timestamps
    end
  end
end
