json.extract! clinical_system, :id, :system_name, :description, :supplier_id, :clinical_safety_officer_id, :go_live_date, :review_date, :technical_owner_id, :organisation_id, :created_at, :updated_at
json.url clinical_system_url(clinical_system, format: :json)
