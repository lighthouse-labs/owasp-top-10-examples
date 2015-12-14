class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :real_name
      t.string :email
      t.string :username
      t.string :password
      t.boolean :admin
      t.timestamps null: false
    end
  end
end
