class InitalSchema < ActiveRecord::Migration[5.0]
  def change
    
    create_table :driver_profiles do |t|
      t.string :license_number
      t.string :social_number
      t.decimal :years_of_experience
      t.string :license_image
      t.string :social_image
      t.string :medical_image
      t.string :pdf
      t.string :pdf_2
      t.text :info
      t.boolean :hazmat
      t.boolean :dryvan
      t.boolean :reefer
      t.boolean :flatbed

      t.timestamps
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
