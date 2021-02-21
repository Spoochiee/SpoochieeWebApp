class AddUserIdToMathematics < ActiveRecord::Migration[6.1]
  def change
    add_column :mathematics, :user_id, :integer
    add_index :mathematics, :user_id
  end
end
