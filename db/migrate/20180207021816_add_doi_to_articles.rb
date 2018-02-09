class AddDoiToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :doi, :string
    add_column :articles, :video, :string
    add_column :articles, :website, :string
    add_column :articles, :podcast, :string
    add_column :articles, :social, :string
  end
end
