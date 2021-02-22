class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :jobs
  has_many :users_jobs_applieds

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_format_of :name, with: /\A[^0-9`!@#$%\^&*+_=]+\z/
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 4 }
end
