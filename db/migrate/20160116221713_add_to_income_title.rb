class AddToIncomeTitle < ActiveRecord::Migration
  def change
    add_column :incomes, :title, :text
  end
end
