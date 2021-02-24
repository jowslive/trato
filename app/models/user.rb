class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :jobs, dependent: :destroy
  has_many :enrollments
  has_one_attached :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_format_of :name, with: /\A[^0-9`!@#$%\^&*+_=]+\z/
  validates :name, presence: true
end
