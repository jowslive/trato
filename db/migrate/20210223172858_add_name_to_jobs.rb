class AddNameToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :name, :string
  end
end
