class RemoveGameTimeFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :game_time, :datetime
  end
end
