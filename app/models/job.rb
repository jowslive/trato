class Job < ApplicationRecord
  has_many :enrollments
  belongs_to :user

  validates :name, presence: true
  validates :content, presence: true
  validates :cnpj, presence: true, length: { is: 14 }, numericality: { only_integer: true }
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
