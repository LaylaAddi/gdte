class InitalSchema < ActiveRecord::Migration[5.0]
  def change
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
    
      create_table :driver_applications do |t|
      t.string :full_name
      t.string :street_address
      t.string :town_city
      t.string :state
      t.string :apartment_number
      t.string :zip_code
      t.string :license_number
      t.string :license_image
      t.string :social_number
      t.string :social_image
      t.string :green_image
      t.string :medical_image
      t.string :telephone
      t.string :email
      t.integer :years_of_experience
      t.text :info
      t.boolean :hazmat, default: false         
      t.boolean :dryvan, default: false
      t.boolean :reefer, default: false
      t.boolean :flatbed, default: false
      t.timestamps
      
    end 
    
    
  end
end
