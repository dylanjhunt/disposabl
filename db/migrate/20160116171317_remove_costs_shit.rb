class RemoveCostsShit < ActiveRecord::Migration
  def change
    remove_column :costs, :email
    remove_column :costs, :encrypted_password
    remove_column :costs, :reset_password_token
    remove_column :costs, :reset_password_sent_at
    remove_column :costs, :remember_created_at
    remove_column :costs, :sign_in_count
    remove_column :costs, :current_sign_in_at
    remove_column :costs, :last_sign_in_at
    remove_column :costs, :current_sign_in_ip
    remove_column :costs, :last_sign_in_ip
  end
end
