class CreateImageobjs < ActiveRecord::Migration
  def change
    create_table :imageobjs do |t|
      t.string :filename
      t.string :private
      t.string :user_id
      t.refrences :tagobj
      t.refrences :userobj
      
      t.timestamps
    end
  end
end
