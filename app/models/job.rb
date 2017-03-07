class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :location, presence: true
  validates :job_type, presence: true
  validates :compensation, presence: true
  validates :description, presence: true
  validates :skills, presence: true

  has_many :applies
  has_many :users, through: :applies
end
