class CreateDatapoints < ActiveRecord::Migration
  def change
    create_table :datapoints do |t|
      t.references :exercise, index: true
      t.integer :quantity
      t.text :unit
      t.text :category
      t.text :name
      t.text :subname
      t.integer :weight

      t.timestamps
    end
  end
end
