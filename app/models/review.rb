class Review < ApplicationRecord
  extend Enumerize

  REVIEW_KINDS = %w[code test design security].freeze
  REVIEW_STATES = ["Unstarted", "In review", "Pass", "Revise"].freeze

  belongs_to :user
  belongs_to :task

  enumerize :kind, in: KINDS
  enumerize :state, in: STATES
  validates :kind, :state, presence: :true
end
