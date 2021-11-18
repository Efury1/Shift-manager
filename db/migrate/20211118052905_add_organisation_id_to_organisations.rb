class AddOrganisationIdToOrganisations < ActiveRecord::Migration[6.1]
  def change
    add_column :organisations, :organisation_id, :interger
    add_index :organisations, :organisation_id
  end
end
