class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :firstname
      t.string :lastname
      t.string :contact_telephone
      t.string :photo
      t.integer :home_restaurant_id
      t.integer :user_id
      t.boolean :verified
      t.integer :role_id

      t.timestamps

    end
  end
end
