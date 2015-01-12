class CreateCaves < ActiveRecord::Migration
  def change
    create_table :caves do |t|
      t.string :name
      t.text :description
      t.float :lat
      t.float :lon

      t.timestamps null: false
    end
  end
end
