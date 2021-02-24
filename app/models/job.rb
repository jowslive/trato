class Job < ApplicationRecord
  has_many :enrollments
  belongs_to :user

  before_save :check_cnpj

  validates :name, presence: true
  validates :content, presence: true
  validates :cnpj, presence: true, length: { is: 14 }, numericality: { only_integer: true }
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def check_cnpj
    url = "https://www.receitaws.com.br/v1/cnpj/#{self.cnpj}"
    begin
      data = JSON.parse HTTParty.get(url, timeout: 1).body
      self.company_name = data['fantasia']
      self.cnpj = data['cnpj']
      self.phone = data['telefone']
    rescue
      data = { 'Erro:': 'Consulta do CNPJ demorou muito para retornar. Tente novamente mais tarde.' }.to_json
    end
  end
end
