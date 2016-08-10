ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	address:                  'smtp.zoho.com',
	port:                     587,
	authentication:           :plain,
	user_name:                ENV["ZOHO_USERNAME"],
	password:                 ENV["ZOHO_PASSWORD"],
	domain:                   'gd-trucking.com',
	enable_starttls_auto:     true 
}

