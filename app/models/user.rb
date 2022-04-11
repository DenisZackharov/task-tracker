class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :project_users, dependent: :destroy
  has_many :working_projects, -> { where(role: "employee") },
    class_name: "ProjectUser", dependent: :destroy, inverse_of: :user
  has_many :assigned_projects, through: :working_projects, source: :project
  has_many :administrating_projects, -> { where(role: "admin") },
    through: :project_users, class_name: "ProjectUser", source: :project
  has_many :owned_projects, through: :administrating_projects, source: :user
  has_many :owned_tasks, class_name: "Task", foreign_key: "owner_id", dependent: :nullify, inverse_of: :owner
  has_many :created_tasks, class_name: "Task", foreign_key: "requester_id", dependent: :restrict_with_exception, inverse_of: :requester

  validates :first_name, :last_name, :email, presence: :true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
