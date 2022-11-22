class CreateTripExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_experiences do |t|
      t.date :experience_date
      t.references :experience, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
