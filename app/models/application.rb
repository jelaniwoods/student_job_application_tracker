class Application < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many  :interviews, dependent: :destroy

  validates :title, presence: true
  validates :due_on, presence: true
end
