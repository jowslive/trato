class Job < ApplicationRecord
  has_many :users_jobs_applieds
  belongs_to :user

  validates :cnpj, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end