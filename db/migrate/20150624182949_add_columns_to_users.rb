class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :english, :string
    add_column :users, :spanish, :string
    add_column :users, :french, :string
    add_column :users, :german, :string
    add_column :users, :italian, :string
  end
end
