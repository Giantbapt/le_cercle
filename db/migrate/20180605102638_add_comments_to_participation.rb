class AddCommentsToParticipation < ActiveRecord::Migration[5.1]
  def change
    add_column :participations, :comments, :text
  end
end
