class CreateProficiencies < ActiveRecord::Migration
  def change
    create_table :proficiencies do |t|
      t.integer :user_id
      t.integer :language_id
      t.integer :level

      t.timestamps null: false
    end
  end
end
