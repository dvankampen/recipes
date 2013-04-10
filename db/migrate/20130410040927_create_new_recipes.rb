class CreateNewRecipes < ActiveRecord::Migration
  def change
    create_table :new_recipes do |t|
      t.string :name
      t.text :ingredients

      t.timestamps
    end
  end
end
