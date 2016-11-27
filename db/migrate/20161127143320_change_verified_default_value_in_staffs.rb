class ChangeVerifiedDefaultValueInStaffs < ActiveRecord::Migration[5.0]
  def change
    change_column_default :staffs, :verified, 'FALSE'
  end
end
