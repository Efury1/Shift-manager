class AddUserIdToOrganisation < ActiveRecord::Migration[6.1]
  def change
    add_column :organisations, :user_id, :interger
    add_index :organisations, :user_id
  end
end
