class AddUserIdToChemistries < ActiveRecord::Migration[6.1]
  def change
    add_column :chemistries, :user_id, :integer
    add_index :chemistries, :user_id
  end
end
