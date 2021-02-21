class CreateMathematics < ActiveRecord::Migration[6.1]
  def change
    create_table :mathematics do |t|
      t.string :teacher
      t.string :description
      t.string :due_date

      t.timestamps
    end
  end
end
