class AddCaloriesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :calories, :integer
  end
end
