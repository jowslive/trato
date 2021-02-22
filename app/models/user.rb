class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :jobs
  has_many :users_jobs_applieds

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
