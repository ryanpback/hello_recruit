User.create(first_name: 'Ryan', last_name: 'Back', email: 'admin@admin.com', password: 'admin23', phone_number: '4157704228', admin: true, street_address: '409 NW Tork Place', city: 'Hillsboro', state: 'OR', zip_code: '97006', phone_carrier: 'at&t')

User.create(first_name: 'Laura', last_name: 'Back', email: 'laura@laura.com', password: 'laura23', phone_number: '4156948834', skills: 'Recruiting, OnBoarding, Interviews', street_address: '409 NW Tork Place', city: 'Hillsboro', state: 'OR', zip_code: '97006', phone_carrier: 't-mobile')

User.create(first_name: 'Nancy', last_name: 'McGuire-Back', email: 'nancy@nancy.com', password: 'nancy23', phone_number: '9167686544', skills: 'Management, Excel', street_address: '1222 Cherry Blossom Lane', city: 'Lincoln', state: 'CA', zip_code: '95648', phone_carrier: 'at&t')

User.create(first_name: 'Mike', last_name: 'McGuire-Back', email: 'mike@mike.com', password: 'mike23', phone_number: '9167181761', skills: 'Management', street_address: '1222 Cherry Blossom Lane', city: 'Lincoln', state: 'CA', zip_code: '95648', phone_carrier: 'at&t')

Job.create(title: 'Junior Web Developer', location: 'Portland, OR', job_type: 'Direct Hire', compensation: '50,000', description: 'In need of a Ruby on Rails developer.', skills: 'Ruby on Rails, Version Control, Git')

Job.create(title: 'IT Specialist', location: 'Hillsboro, OR', job_type: 'Contract', duration: '6 Months', compensation: '20/hr', description: 'In need of a linux professional', skills: 'Linux, Bash')

Job.create(title: 'Recruiter', location: 'Tigard, OR', job_type: 'Temp to Hire', compensation: '25/hr', description: 'In need of an HR recruiter.', skills: 'People Person, Microsoft Office')

Job.create(title: 'Junior Web Developer', location: 'Portland, OR', job_type: 'Contract', duration: '1 year', compensation: '30/hr', description: 'Must know CSS', skills: 'Sass, Bootstrap, Animations')
