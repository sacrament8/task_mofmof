class CreateSecondNearests < ActiveRecord::Migration[5.0]
  def change
    create_table :second_nearests do |t|
      t.string :line_name, null: false
      t.string :station_name, null: false
      t.integer :walk_time, null: false
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
