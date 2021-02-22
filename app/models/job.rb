class Job < ApplicationRecord
  has_many :users_jobs_applieds
  belongs_to :user
end
