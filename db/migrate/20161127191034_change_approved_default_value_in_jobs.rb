class ChangeApprovedDefaultValueInJobs < ActiveRecord::Migration[5.0]
  def change
    change_column_default :jobs, :approved, 'FALSE'
  end
end
