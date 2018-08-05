class CreateTournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :tournaments do |t|
      t.datetime :date
      t.string :place
      t.integer :number_of_teams
      t.string :photo
      t.integer :price_per_team
      t.string :name
      t.string :winner
      t.text :description
      t.bigint :phone_number

      t.timestamps
    end
  end
end
