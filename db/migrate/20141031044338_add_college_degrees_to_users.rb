class AddCollegeDegreesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :college_degrees, :string
  end
end
