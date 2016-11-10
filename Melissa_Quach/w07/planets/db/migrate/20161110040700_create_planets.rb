class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :color
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
