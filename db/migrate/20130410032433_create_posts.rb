class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :ingredients

      t.timestamps
    end
  end
end
