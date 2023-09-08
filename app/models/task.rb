class Task < ApplicationRecord
  has_many :notes, dependent: :destroy

  validates :body, presence: true, length: { minimum: 2 }
end
