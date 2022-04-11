class Comment < ApplicationRecord
  belongs_to :task
  belongs_to :user

  validates :text, presence: true, length: { in: 10..1000 }
end
