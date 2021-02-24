class AddPhoneToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :phone, :string 
  end
end
