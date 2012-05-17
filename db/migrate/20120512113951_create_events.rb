class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.boolean :is_public
      t.integer :capacity
t.datetime "created_at", :null =>false
t.datetime "updated_at", :null => false

    
  end
end
