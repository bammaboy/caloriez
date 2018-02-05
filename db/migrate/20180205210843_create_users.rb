class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.date :birthdate
      t.string :address
      t.integer :height
      t.float :weight
      t.float :goalweight

      t.timestamps
    end
  end
end
