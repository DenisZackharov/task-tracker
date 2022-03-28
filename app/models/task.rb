class Task < ApplicationRecord
  extend Enumerize

  TASK_STATES = %w[Unstarted Started Finished Delivered Rejected Accepted].freeze
  STORY_TYPES = %w[Bug Feature Chore Release].freeze
  PRIORITIES = ["P0 - Critical", "P1 - High", "P2 - Medium", "P3 - Low", "None"].freeze
  KIND_OF_POINTS = %w[Unestimated 0 1 2 3 5 8].freeze

  belongs_to :owner, class_name: "User", inverse_of: :owned_tasks, optional: true
  belongs_to :requester, class_name: "User", inverse_of: :created_tasks
  belongs_to :project

  has_many :reviews, dependent: :destroy
  has_many :comments, dependent: :destroy

  enumerize :state, in: TASK_STATES, default: "Unstarted"
  enumerize :story_type, in: STORY_TYPES, default: "Feature"
  enumerize :priority, in: PRIORITIES, default: "P3 - Low"
  enumerize :point, in: KIND_OF_POINTS, default: "Unestimated"
  validates :name, :state, :story_type, :priority, :point, presence: true
end
