class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.decimal :goal_amount
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
