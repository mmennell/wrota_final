class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.datetime :start_time
      t.string :end_time
      t.integer :role_id
      t.float :hourly_rate
      t.float :bonus
      t.string :bonus_terms
      t.integer :staff_id
      t.boolean :approved

      t.timestamps

    end
  end
end
