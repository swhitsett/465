class CreateUserObjs < ActiveRecord::Migration
  def change
    create_table :user_objs do |t|
      t.string :email
      t.string :enc_pwd
      t.string :name

      t.timestamps
    end
  end
end
