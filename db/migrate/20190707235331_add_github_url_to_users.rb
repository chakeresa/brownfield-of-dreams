class AddGithubUrlToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :github_url, :string
    add_column :users, :github_handle, :string
  end
end
