class AddContentToJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :content, :text
  end
end
