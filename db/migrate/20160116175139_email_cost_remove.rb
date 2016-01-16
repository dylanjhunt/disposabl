class EmailCostRemove < ActiveRecord::Migration
  def change
    remove_column :costs, :email, :string
  end
end
