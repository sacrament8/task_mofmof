class CreateFirstNearests < ActiveRecord::Migration[5.0]
  def change
    create_table :first_nearests do |t|
      t.string :line_name, null: false
      t.string :station_name, null: false
      t.integer :walk_time, null: false
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
