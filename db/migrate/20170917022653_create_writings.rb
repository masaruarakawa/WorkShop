class CreateWritings < ActiveRecord::Migration[5.1]
  def change
    create_table :writings do |t|
      t.string :question
      t.string :correct
      t.string :hint
      t.string :explanation

      t.timestamps
    end
  end
end
