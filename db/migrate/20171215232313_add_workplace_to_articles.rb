class AddWorkplaceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_work_place, :string
  end
end
