class CreateBiologies < ActiveRecord::Migration[6.1]
  def change
    create_table :biologies do |t|
      t.string :teacher
      t.string :description
      t.string :due_date

      t.timestamps
    end
  end
end
