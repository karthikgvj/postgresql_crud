class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.text :gender
      t.text :designation

      t.timestamps
    end
  end
end
