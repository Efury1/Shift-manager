class AddUserIdToShifts < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :user_id, :integer
    add_index :shifts, :user_id
  end
end
