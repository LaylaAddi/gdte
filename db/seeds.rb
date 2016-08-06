
 
    es =
  [
    "pending",
    "approved",
    "declined",
    "active",
    "sick_leave",
    "suspended",
    "vacation",
    "fired"
    ]       
    user_type =
  [ "registered",
    "office",
    "dispatch",
    "admin"
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
    
     admin = User.create(
  first_name: "System",
  last_name: "Admin",
  office_phone: "716-986-4010",
  email: "steve@chesnowitz.com", 
  password: "password", 
  password_confirmation: "password",
  user_type: "admin",
  street_address_1: "123 any street",
  city: "Toronto",
  zip_code: "N2H 6R4",
  cellphone: "716-986-4010",
  employment_status: "active",
  extention: "123"
  )
  
       office = User.create(
  first_name: "Office",
  last_name: "User",
  office_phone: "716-986-4010",
  email: "s.chesnowitz@gmail.com", 
  password: "password", 
  password_confirmation: "password",
  user_type: "office",
  street_address_1: "123 any street",
  city: "Toronto",
  zip_code: "N2H 6R4",
  cellphone: "716-986-4010",
  employment_status: "active",
  extention: "123"
  )
  
         office = User.create(
  first_name: "Dispatch",
  last_name: "User",
  office_phone: "716-986-4010",
  email: "steve@chesnowitz.com", 
  password: "password", 
  password_confirmation: "password",
  user_type: "dispatch",
  street_address_1: "123 any street",
  city: "Toronto",
  zip_code: "N2H 6R4",
  cellphone: "716-986-4010",
  employment_status: "active",
  extention: "123"
  )    
    
5.times do
  user = User.create(
  first_name: FFaker::Name.first_name,
  last_name: FFaker::Name.last_name,
  office_phone: "847-678-0600",
  email: FFaker::Internet.email, 
  password: "password", 
  password_confirmation: "password",
  user_type: user_type.sample,
  street_address_1: FFaker::Address.street_address,
  city: city.sample,
  zip_code: FFaker::AddressUS.zip_code,
  cellphone: FFaker::PhoneNumber.phone_number,
  employment_status: es.sample,
  extention: "123"
  )
  puts  user.inspect
end



  5.times do
  driver = Driver.create(first_name: FFaker::Name.first_name,
                          last_name: FFaker::Name.last_name,
                      street_address_1: FFaker::Address.street_address,
                                  city: city.sample,
                              zip_code: FFaker::AddressUS.zip_code,
                        license_number: FFaker::Identification.drivers_license,	
                          social_number: FFaker::Identification.ssn,	
                              telephone: FFaker::PhoneNumber.phone_number,
                              cellphone: FFaker::PhoneNumber.phone_number,
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
                employment_status: es.sample
                        )
                                         
  puts driver.inspect
end

 