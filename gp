git add -A
git commit -m 'update driver e status'
git push -u origin master 
git push dokku master


 
rails g migration AddEmploymentStatusToDrivers employment_status:string, default: "submitted"