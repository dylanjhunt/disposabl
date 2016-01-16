class FixTitle < ActiveRecord::Migration
  def change
    change_column :costs, :title, :string
  end
end
