class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.integer :index
    	t.string :name
    	
      t.timestamps
    end
  end
end
