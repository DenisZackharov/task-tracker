class Review < ApplicationRecord
  extend Enumerize

  REVIEW_KINDS = %w[code test design security].frozen
  REVIEW_STATES = ["Unstarted", "In review", "Pass", "Revise"].frozen

  belongs_to :user
  belongs_to :task

  enumerize :kind, in: KINDS
  enumerize :state, in: STATES
end
