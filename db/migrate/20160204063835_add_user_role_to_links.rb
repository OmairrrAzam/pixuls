class AddUserRoleToLinks < ActiveRecord::Migration
  def change
    add_column :links, :user_role, :integer
  end
end
