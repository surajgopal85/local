class AddNameToExperiences < ActiveRecord::Migration[7.0]
  def change
    add_column :experiences, :name, :string
  end
end
