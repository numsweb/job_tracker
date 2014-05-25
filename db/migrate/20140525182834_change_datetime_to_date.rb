class ChangeDatetimeToDate < ActiveRecord::Migration
  def change
    change_column :jobs, :last_contact, :date
  end
end
