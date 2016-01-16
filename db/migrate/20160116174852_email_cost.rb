class EmailCost < ActiveRecord::Migration
  def change
    add_column :costs, :email, :string
  end
end
