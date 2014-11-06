class CreateUserobjs < ActiveRecord::Migration
  def change
    create_table :userobjs do |t|
      t.string :email
      t.string :enc_pwd
      t.string :name
      t.refrences :imageobj

      t.timestamps
    end
  end
end
