class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :string
    add_column :users, :provide, :string
    add_column :users, :github_account, :string
  end
end
