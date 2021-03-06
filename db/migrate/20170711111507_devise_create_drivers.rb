class DeviseCreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :first_name
      t.string :last_name
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
      t.string :cellphone
      t.decimal :years_of_experience
      t.text :info
      t.boolean :hazmat, default: false         
      t.boolean :dryvan, default: false
      t.boolean :reefer, default: false
      t.boolean :flatbed, default: false
      t.date :dob
      t.string :pdf
      t.string :employment_status, default: "submitted"  
      t.string :updated_by
      t.string :e_contact_name
      t.string :e_contact_number
      t.text :driver_declined

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :drivers, :email,                unique: true
    add_index :drivers, :reset_password_token, unique: true
    # add_index :drivers, :confirmation_token,   unique: true
    # add_index :drivers, :unlock_token,         unique: true
  end
end
