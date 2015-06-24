class AddLanguageColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :english, :integer
    add_column :users, :french, :integer
    add_column :users, :spanish, :integer
    add_column :users, :italian, :integer
    add_column :users, :german, :integer
  end
end
