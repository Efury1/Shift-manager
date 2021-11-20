class RemoveUserIdFromOrganisations < ActiveRecord::Migration[6.1]
  def change
    remove_column :organisations, :user_id, :interger
  end
end
