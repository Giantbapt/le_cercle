class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :state, default: "pending"
      t.string :team_1, class_name: "Participation", foreign_key: "participation_id"
      t.string :team_2, class_name: "Participation", foreign_key: "participation_id"
      t.integer :score_team_1
      t.integer :score_team_2
      t.string :state_of_team_1
      t.string :state_of_team_2
      t.integer :field
      t.references :tournament, foreign_key: true
      t.time :time
      t.timestamps
    end
  end
end
