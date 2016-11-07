class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    	t.string :name
    	t.integer :capacity
    	t.string :description

      t.timestamps
    end
  end
end
