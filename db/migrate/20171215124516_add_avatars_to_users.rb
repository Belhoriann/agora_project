class AddAvatarsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :headline, :string
    add_column :users, :work_place, :string
    add_column :users, :linkedin, :string
  end
  
  def self.up
    change_table :users do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :users, :avatar
  end
end