class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  has_attached_file :resume, styles: {icon: "100x100>"}
  validates_attachment_content_type :resume, content_type: { content_type: %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.template) }
  has_attached_file :cover_letter, styles: {icon: "100x100>"}
  validates_attachment_content_type :cover_letter, content_type: { content_type: %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.template) }
end
