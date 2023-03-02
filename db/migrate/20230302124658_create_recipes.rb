class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.integer :id
      t.string :type
      t.string :name
      t.string :image
      t.string :ingredients
      t.string :instructions


      t.timestamps
    end
  end
end
