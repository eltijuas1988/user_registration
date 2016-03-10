class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :street
      t.string :state
      t.string :postal_code
      t.string :country
      t.string :email

      t.timestamps null: false
    end
  end
end
