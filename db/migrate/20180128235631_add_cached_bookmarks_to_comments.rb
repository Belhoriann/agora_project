class AddCachedBookmarksToComments < ActiveRecord::Migration[5.0]
  def self.up
    add_column :comments, :cached_scoped_bookmark_comment_votes_total, :integer, :default => 0
    add_column :comments, :cached_scoped_bookmark_comment_votes_score, :integer, :default => 0
    add_column :comments, :cached_scoped_bookmark_comment_votes_up, :integer, :default => 0
    add_column :comments, :cached_scoped_bookmark_comment_votes_down, :integer, :default => 0
    add_column :comments, :cached_weighted_bookmark_comment_score, :integer, :default => 0
    add_column :comments, :cached_weighted_bookmark_comment_total, :integer, :default => 0
    add_column :comments, :cached_weighted_bookmark_comment_average, :float, :default => 0.0
    add_index  :comments, :cached_scoped_bookmark_comment_votes_total
    add_index  :comments, :cached_scoped_bookmark_comment_votes_score
    add_index  :comments, :cached_scoped_bookmark_comment_votes_up
    add_index  :comments, :cached_scoped_bookmark_comment_votes_down
    add_index  :comments, :cached_weighted_bookmark_comment_score
    add_index  :comments, :cached_weighted_bookmark_comment_total
    add_index  :comments, :cached_weighted_bookmark_comment_average
  end

  def self.down
    remove_column :comments, :cached_scoped_bookmark_comment_votes_total
    remove_column :comments, :cached_scoped_bookmark_comment_votes_score
    remove_column :comments, :cached_scoped_bookmark_comment_votes_up
    remove_column :comments, :cached_scoped_bookmark_comment_votes_down
    remove_column :comments, :cached_weighted_bookmark_comment_score
    remove_column :comments, :cached_weighted_bookmark_comment_total
    remove_column :comments, :cached_weighted_bookmark_comment_average
  end
end