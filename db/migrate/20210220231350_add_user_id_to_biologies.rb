class AddUserIdToBiologies < ActiveRecord::Migration[6.1]
  def change
    add_column :biologies, :user_id, :integer
    add_index :biologies, :user_id
  end
end
