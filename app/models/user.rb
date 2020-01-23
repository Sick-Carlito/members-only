# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_many :posts

  validates :email, presence: true
  validates :password, length: { minimum: 6 }

  before_create :create_remember_token

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end
end
