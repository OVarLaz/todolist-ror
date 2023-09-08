class Note < ApplicationRecord
  belongs_to :task
  
  validates :body, presence: true, length: { minimum: 10 }
end
