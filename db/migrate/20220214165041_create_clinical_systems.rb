class CreateClinicalSystems < ActiveRecord::Migration[7.0]
  def change
    create_table :clinical_systems do |t|
      t.string :system_name
      t.text :description
      t.references :supplier, null: false, foreign_key: true
      t.references :clinical_safety_officer, null: false, foreign_key: true
      t.date :go_live_date
      t.date :review_date
      t.references :technical_owner, null: false, foreign_key: true
      t.references :organisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
