class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about, :text
    add_column :users, :gender, :string
    add_column :users, :nationality, :string
    add_column :users, :address, :text
  end
end
