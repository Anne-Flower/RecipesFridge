class CreateUnits < ActiveRecord::Migration[7.2]
  def change
    create_table :units do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end