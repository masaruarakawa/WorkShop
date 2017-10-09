class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :category_id
      t.string :task

      t.timestamps
    end
  end
end
