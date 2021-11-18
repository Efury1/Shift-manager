class AddUserIdToOrganisation < ActiveRecord::Migration[6.1]
  def change
    add_column :organisations, :user_id, :integer
    add_index :organisations, :user_id
  end
end
