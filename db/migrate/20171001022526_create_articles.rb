class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :category
      t.string :title
      t.string :content
      t.string :tab1
      t.string :tab2
      t.string :tab3

      t.timestamps
    end
  end
end
