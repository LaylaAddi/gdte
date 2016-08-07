class InitalSchema < ActiveRecord::Migration[5.0]
  def change
    
    create_table :office_driver_comments do |t|
      t.integer :user_id, index: true
      t.integer :driver_id, index: true
      t.text :body

      t.timestamps
    end    
    


    # create_table :trucks do |t|
    #   t.integer :odometer
    #   t.date :last_pm
    #   t.date :last_wash
    #   t.string :city
    #   t.string :state
    #   t.float :latitude
    #   t.float :longitude
    #   t.timestamps
    # end

  end
end
