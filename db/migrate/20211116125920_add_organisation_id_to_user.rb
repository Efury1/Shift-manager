class AddOrganisationIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :organisation_id, :integer
    add_index :users, :organisation_id
  end
end
