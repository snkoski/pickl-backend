class AddTotalLikesToTeam < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :total_likes, :integer, default: 0
  end
end
