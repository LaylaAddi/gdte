class AddEmploymentStatusToDrivers < ActiveRecord::Migration[5.0]
  def change
    add_column :drivers, :employment_status, :string,
    add_column :drivers, :default, :string
    add_column :drivers, :submitted, :string
  end
end
