class CreateMathWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :math_works do |t|
      t.integer :digit1
      t.integer :digit2
      t.integer :operator
      t.integer :times

      t.timestamps
    end
  end
end
