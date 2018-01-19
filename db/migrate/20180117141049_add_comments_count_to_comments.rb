class AddCommentsCountToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comments_count, :integer, :default => 0, :null => false
  end
end
