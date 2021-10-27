class Interview < ApplicationRecord
  belongs_to :application

  has_one  :user, through: :application, source: :user
  has_one  :company, through: :application, source: :company
  validates :starts_at, presence: true
  validates :round, presence: true, numericality: { less_than_or_equal_to: 3 }
  validates :round, uniqueness: { scope: ["application_id"] }
end
