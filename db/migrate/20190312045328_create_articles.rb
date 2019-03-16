class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :name, null: false
      t.integer :rent, null: false
      t.text :address, null: false
      t.integer :age, null: false
      t.text :remark, null: false

      t.timestamps
    end
  end
end
