class CreateTerminals < ActiveRecord::Migration
  def change
    create_table :terminals do |t|
      t.string :name
      t.text :description
      t.text :attribute_values

      t.timestamps
    end
  end
end
