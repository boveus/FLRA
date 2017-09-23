class SafetyReport < ApplicationRecord
  belongs_to :employee
  has_many :hazards
end
