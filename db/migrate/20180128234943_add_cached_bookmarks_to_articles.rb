class AddCachedBookmarksToArticles < ActiveRecord::Migration[5.0]
  def self.up
    add_column :articles, :cached_scoped_bookmark_votes_total, :integer, :default => 0
    add_column :articles, :cached_scoped_bookmark_votes_score, :integer, :default => 0
    add_column :articles, :cached_scoped_bookmark_votes_up, :integer, :default => 0
    add_column :articles, :cached_scoped_bookmark_votes_down, :integer, :default => 0
    add_column :articles, :cached_weighted_bookmark_score, :integer, :default => 0
    add_column :articles, :cached_weighted_bookmark_total, :integer, :default => 0
    add_column :articles, :cached_weighted_bookmark_average, :float, :default => 0.0
    add_index  :articles, :cached_scoped_bookmark_votes_total
    add_index  :articles, :cached_scoped_bookmark_votes_score
    add_index  :articles, :cached_scoped_bookmark_votes_up
    add_index  :articles, :cached_scoped_bookmark_votes_down
    add_index  :articles, :cached_weighted_bookmark_score
    add_index  :articles, :cached_weighted_bookmark_total
    add_index  :articles, :cached_weighted_bookmark_average
  end

  def self.down
    remove_column :articles, :cached_scoped_bookmark_votes_total
    remove_column :articles, :cached_scoped_bookmark_votes_score
    remove_column :articles, :cached_scoped_bookmark_votes_up
    remove_column :articles, :cached_scoped_bookmark_votes_down
    remove_column :articles, :cached_weighted_bookmark_score
    remove_column :articles, :cached_weighted_bookmark_total
    remove_column :articles, :cached_weighted_bookmark_average
  end
end