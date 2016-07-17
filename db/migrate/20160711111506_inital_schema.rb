class InitalSchema < ActiveRecord::Migration[5.0]
  def change
    
    
    create_table :internal_driver_statuses do |t|
      t.string :status, default: "Pending" 
    end
    
    create_table :trucks do |t|
      t.integer :odometer
      t.date :last_pm
      t.date :last_wash
      t.string :city
      t.string :state
      t.float :latitude
      t.float :longitude
      t.timestamps
    end

  end
end
