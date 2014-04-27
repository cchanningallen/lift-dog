class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :collector, index: true
      t.text :name
      t.text :mod
      t.integer :reps
      t.integer :weight
      t.float :distance
      t.integer :calories

      t.timestamps
    end
  end
end
