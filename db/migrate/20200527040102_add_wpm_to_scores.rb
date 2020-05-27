class AddWpmToScores < ActiveRecord::Migration[6.0]
    def change
      add_column :scores, :wpm, :float
    end
end
