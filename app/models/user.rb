class User < ApplicationRecord
<<<<<<< HEAD
  before_save{self.email = email.downcase}
  validates :name, presence: true, length: {maximum: Settings.length1}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: Settings.length2}, format: {with: VALID_EMAIL_REGEX},
  uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: Settings.password_length}
=======
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: Settings.length1 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: Settings.length2 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: Settings.password_length }
>>>>>>> deverlop
end
