class Project < ApplicationRecord
  has_many :project_users, dependent: :destroy
  has_many :admin_users, -> { where(role: "admin") }, class_name: "ProjectUser", dependent: :destroy, inverse_of: :project
  has_many :admins, through: :admin_users, source: :user
  has_many :employees_users, -> { where(role: "employee") }, class_name: "ProjectUser", dependent: :destroy, inverse_of: :project
  has_many :employees, through: :employees_users, source: :user
  has_many :tasks, dependent: :destroy

  validates :name, presence: :true, length: { in: 2..100 }, uniqueness: true
  validates :description, length: { maximum: 100 }
end
