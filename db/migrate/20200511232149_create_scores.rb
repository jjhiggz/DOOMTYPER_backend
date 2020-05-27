class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.float :time_complete
      t.integer :words_correct
      t.integer :words_incorrect
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.json :characters_missed

      t.timestamps
    end
  end
end
