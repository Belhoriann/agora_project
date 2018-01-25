class AddCachedFollowersToUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_column :users, :cached_scoped_following_votes_total, :integer, :default => 0
    add_column :users, :cached_scoped_following_votes_score, :integer, :default => 0
    add_column :users, :cached_scoped_following_votes_up, :integer, :default => 0
    add_column :users, :cached_scoped_following_votes_down, :integer, :default => 0
    add_column :users, :cached_weighted_following_score, :integer, :default => 0
    add_column :users, :cached_weighted_following_total, :integer, :default => 0
    add_column :users, :cached_weighted_following_average, :float, :default => 0.0
    add_index  :users, :cached_scoped_following_votes_total
    add_index  :users, :cached_scoped_following_votes_score
    add_index  :users, :cached_scoped_following_votes_up
    add_index  :users, :cached_scoped_following_votes_down
    add_index  :users, :cached_weighted_following_score
    add_index  :users, :cached_weighted_following_total
    add_index  :users, :cached_weighted_following_average
  end

  def self.down
    remove_column :users, :cached_scoped_following_votes_total
    remove_column :users, :cached_scoped_following_votes_score
    remove_column :users, :cached_scoped_following_votes_up
    remove_column :users, :cached_scoped_following_votes_down
    remove_column :users, :cached_weighted_following_score
    remove_column :users, :cached_weighted_following_total
    remove_column :users, :cached_weighted_following_average
  end
end
