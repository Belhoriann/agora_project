class AddSubtitleToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :sub_title, :string
  end
end
