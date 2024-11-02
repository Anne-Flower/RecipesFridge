class CreateRecipes < ActiveRecord::Migration[7.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :prep_time
      t.integer :rate
      t.string :budget

      t.timestamps
    end
  end
end
