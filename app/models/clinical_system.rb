class ClinicalSystem < ApplicationRecord
  belongs_to :supplier
  belongs_to :clinical_safety_officer
  belongs_to :technical_owner
  belongs_to :organisation
end
