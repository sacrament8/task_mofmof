class DropUnnecessaryTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :first_nearests
    drop_table :second_nearests
  end
end
