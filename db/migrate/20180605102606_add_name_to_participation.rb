class AddNameToParticipation < ActiveRecord::Migration[5.1]
  def change
  	add_column :participations, :name, :string
  end
end
