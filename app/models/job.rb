class Job < ApplicationRecord
  has_many :enrollments
  belongs_to :user

  validates :cnpj, presence: true
  validates :amount, presence: true, numericality: { only_integer: true }
end
