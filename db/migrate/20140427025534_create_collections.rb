class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.references :exercise, index: true
      t.text :name
      t.integer :score

      t.timestamps
    end
  end
end
