class PointDistribution < ApplicationRecord
  belongs_to :user, validate: true, touch: true
  belongs_to :reference, validate: true, touch: false
  belongs_to :order, validate: true

  validates :base_value, presence: true
  
  scope :not_done_by_old, -> { where(done: false).order(id: :asc) } 
end
