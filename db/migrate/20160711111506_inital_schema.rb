class InitalSchema < ActiveRecord::Migration[5.0]
  def change
    
    create_table :driver_profiles do |t| 
      ## Database authenticatable
      t.string :full_name
      t.string :telephone
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :license_number
      t.string :license_image
      t.string :social_number
      t.string :social_image
      t.string :green_image
      t.string :medical_image
      t.string :telephone
      t.string :email
      t.decimal :years_of_experience
      t.text :info
      t.boolean :hazmat, default: false         
      t.boolean :dryvan, default: false
      t.boolean :reefer, default: false
      t.boolean :flatbed, default: false
      t.date :dob
      t.string :pdf
      t.string :internal_driver_status, default: 'Pending'
      t.integer :driver_id, index: true
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
