class AddLinksToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :researchgate, :string
    add_column :users, :twitter, :string
    add_column :users, :facebook, :string
    add_column :users, :youtube, :string
    add_column :users, :instagram, :string
    add_column :users, :skype, :string
    add_column :users, :website, :string
  end
end
