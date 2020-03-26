# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #      :recoverable, :rememberable, :validatable
  has_many :profiles
  has_secure_password

  # validates :username, presence: true
  # validates :username, uniqueness: true
  # validates :username, length: { minimum: 4 }
  # validates :email, presence: true
  # validates :email, uniqueness: true
  # validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
