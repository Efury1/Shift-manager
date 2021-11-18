class AddUserIdToOrganisations < ActiveRecord::Migration[6.1]
  def change
    add_column :organisations, :user__id, :interger
    add_index :organisations, :user__id
  end
end
