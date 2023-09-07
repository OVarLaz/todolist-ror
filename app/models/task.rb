class Task < ApplicationRecord
  validates :body, presence: true, length: { minimum: 2 }
end
