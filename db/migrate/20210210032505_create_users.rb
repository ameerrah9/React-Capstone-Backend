class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :location
      t.string :username
      t.string :email
      t.string :img_src
      t.string :password_digest

      t.timestamps
    end
  end
end
