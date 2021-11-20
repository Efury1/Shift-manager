class RemoveUserIdFromShifts < ActiveRecord::Migration[6.1]
  def change
    remove_index :shifts, :user_id
    remove_column :shifts, :user_id, :string
  end
end
