class Apply < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :skills, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
  # validates :resume, presence: true

  has_attached_file :resume, styles: {icon: "100x100>"}
  validates_attachment_content_type :resume, content_type: { content_type: %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.template) }
  has_attached_file :cover_letter, styles: {icon: "100x100>"}
  validates_attachment_content_type :cover_letter, content_type: { content_type: %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.template) }

  belongs_to :user
  belongs_to :job
end
