class AddDetailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gender, :string
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :profile, :text
    add_column :users, :profile_image, :string
  end
end
