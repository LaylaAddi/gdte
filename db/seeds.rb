
  ids =
  [
    "Pending",
    "Approved",
    "Declined",
    "Active",
    "Suspended",
    "Vacation",
    "Fired"
    ]
  
  city =
    [
    "New York, New York",
    "Los Angeles, California",
    "Chicago,	Illinois", 
    "Houston,	Texas",
    "Philadelphia, Pennsylvania",
    "Phoenix,	Arizona",
    "San Antonio,	Texas",
    "San Diego,	California",
    "Dallas,	Texas",
    "Jacksonville, Florida",
    "San Francisco,	California",
    "Charlotte,	North Carolina",
    "Seattle,	Washington",
    "Detroit,	Michigan",
    "Boston,	Massachusetts",
    "Kansas City,	Missouri",
    "Atlanta,	Georgia",
    "Raleigh,	North Carolina",
    "Minneapolis,	Minnesota",
    "Cleveland,	Ohio",
    "Pittsburgh,	Pennsylvania",
    "Toledo,	Ohio",
    "Jersey City,	New Jersey",
    "Fort Wayne,	Indiana",
    "Buffalo,	New York",
    "Worcester,	Massachusetts",
    "Bridgeport,	Connecticut",
    "Hartford,	Connecticut"   
  ]
  
  yoe =
  [ "2.5",
    "3",
    "9.5",
    "6",
    "4.5",
    "7.5",
    "4",
    "12.5",
    "8",
    "8.5",
    "9",
    "10",
    "14.5",
    "18",
    "22.5"]
5.times do
  dispatcher = Dispatcher.create(
  full_name: FFaker::Name.name,
  telephone: FFaker::PhoneNumber.phone_number,
  email: FFaker::Internet.email, 
  password: "password", 
  password_confirmation: "password")
  puts  dispatcher.inspect
end



  10.times do
  application = Driver.create(full_name: FFaker::Name.name,
                       street_address_1: FFaker::Address.street_address,
                                   city: city.sample,
                               zip_code: FFaker::AddressUS.zip_code,
                         license_number: FFaker::Identification.drivers_license,	
                          social_number: FFaker::Identification.ssn,	
                              telephone: FFaker::PhoneNumber.phone_number,
                                    dob: FFaker::Time.date,
                                  email: FFaker::Internet.disposable_email,
                    years_of_experience: yoe.sample,
                                   info: FFaker::Lorem.sentence,
                                 hazmat: FFaker::Boolean.random,
                                 reefer: FFaker::Boolean.random,
                                 dryvan: FFaker::Boolean.random,
                                flatbed: FFaker::Boolean.random,
                          license_image: open("app/assets/images/fake_image/dl/#{rand(1..10)}.jpg"),
                           social_image: open("app/assets/images/fake_image/ssn/#{rand(1..10)}.jpg"),
                          medical_image: open("app/assets/images/fake_image/med/#{rand(1..5)}.jpg"),
                               password: "password", 
                  password_confirmation: "password",
                 internal_driver_status: ids.sample
                         )
                                         
  puts application.inspect
end
