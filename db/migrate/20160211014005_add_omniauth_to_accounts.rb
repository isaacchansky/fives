class AddOmniauthToAccounts < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :provider, :string
    add_column :accounts, :uid, :string
  end
end
