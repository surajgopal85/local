class AddAddressToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :address, :string
  end
end
