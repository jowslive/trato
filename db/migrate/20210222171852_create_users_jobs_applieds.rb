class CreateUsersJobsApplieds < ActiveRecord::Migration[6.0]
  def change
    create_table :users_jobs_applieds do |t|
      t.references :user, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
