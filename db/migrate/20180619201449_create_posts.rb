class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :game_time
      t.integer :home_likes
      t.integer :away_likes
      t.integer :post_likes

      t.timestamps
    end
  end
end
