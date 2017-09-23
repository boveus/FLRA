class Hazard < ApplicationRecord
  belongs_to :safety_report
  has_many :prevention_actions
  has_many :severity_values
end
