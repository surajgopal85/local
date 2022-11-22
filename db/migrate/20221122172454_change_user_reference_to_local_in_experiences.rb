class ChangeUserReferenceToLocalInExperiences < ActiveRecord::Migration[7.0]
  def change
    remove_reference :experiences, :user
    add_reference :experiences, :local, foreign_key: { to_table: :users }
  end
end
