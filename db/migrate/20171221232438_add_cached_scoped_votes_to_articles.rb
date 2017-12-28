class AddCachedScopedVotesToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :cached_scoped_praise_votes_total, :integer, :default => 0
    add_column :articles, :cached_scoped_praise_votes_score, :integer, :default => 0
    add_column :articles, :cached_scoped_praise_votes_up, :integer, :default => 0
    add_column :articles, :cached_scoped_praise_votes_down, :integer, :default => 0
    add_column :articles, :cached_weighted_praise_score, :integer, :default => 0
    add_column :articles, :cached_weighted_praise_total, :integer, :default => 0
    add_column :articles, :cached_weighted_praise_average, :float, :default => 0.0
    add_index  :articles, :cached_scoped_praise_votes_total
    add_index  :articles, :cached_scoped_praise_votes_score
    add_index  :articles, :cached_scoped_praise_votes_up
    add_index  :articles, :cached_scoped_praise_votes_down
    add_index  :articles, :cached_weighted_praise_score
    add_index  :articles, :cached_weighted_praise_total
    add_index  :articles, :cached_weighted_praise_average
  end

  def self.down
    remove_column :articles, :cached_scoped_praise_votes_total
    remove_column :articles, :cached_scoped_praise_votes_score
    remove_column :articles, :cached_scoped_praise_votes_up
    remove_column :articles, :cached_scoped_praise_votes_down
    remove_column :articles, :cached_weighted_praise_score
    remove_column :articles, :cached_weighted_praise_total
    remove_column :articles, :cached_weighted_praise_average
  end
end