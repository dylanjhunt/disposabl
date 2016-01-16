class AddAmountToCosts < ActiveRecord::Migration
  def change
      add_column :costs, :title, :integer
      add_column :costs, :amount, :integer
  end
end
