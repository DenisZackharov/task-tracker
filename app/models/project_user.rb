class ProjectUser < ApplicationRecord
  extend Enumerize

  AVAILABLE_ROLES = %w[admin manager employee].freeze

  belongs_to :user
  belongs_to :project

  enumerize :role, in: AVAILABLE_ROLES
  validates :role, presence: :true
end
