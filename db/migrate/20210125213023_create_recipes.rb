class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :img_url
      t.string :amount1
      t.string :ingredient1
      t.string :amount2
      t.string :ingredient2
      t.string :amount3
      t.string :ingredient3
      t.string :amount4
      t.string :ingredient4
      t.string :amount5
      t.string :ingredient5
      t.string :amount6
      t.string :ingredient6
      t.string :amount7
      t.string :ingredient7
      t.string :amount8
      t.string :ingredient8
      t.string :amount9
      t.string :ingredient9
      t.string :amount10
      t.string :ingredient10
      t.string :garnish
      t.string :instructions
      t.string :glassware
      t.string :history
      t.string :flavor_profile
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
