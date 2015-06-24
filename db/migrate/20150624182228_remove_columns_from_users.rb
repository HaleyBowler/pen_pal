class RemoveColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :english, :integer
    remove_column :users, :spanish, :integer
    remove_column :users, :german, :integer
    remove_column :users, :italian, :integer
    remove_column :users, :french, :integer
  end
end
