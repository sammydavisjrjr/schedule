# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {maximum: 50}, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }


rescue ActiveRecord::StatementInvalid
  # Handle duplicate email addresses gracefully by redirecting.
  redirect_to home_url

#rescue ActionController::InvalidAuthenticityToken
  # Experience has shown that the vast majority of these are bots
  # trying to spam the system, so catch & log the exception.

#  warning = "ActionController::InvalidAuthenticityToken: #{params.inspect}"
#  logger.warn warning
#  redirect_to home_url

end
