class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :encrypted_password
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :user_create_at

      t.timestamps
    end
  end
end
