class AddUserIdToSecretCode < ActiveRecord::Migration[5.1]
  def change
    add_column :secret_codes, :user_id, :integer
  end
end
