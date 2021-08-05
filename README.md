# Overtime App
[demo](https://laurie-overtime.herokuapp.com/users/sign_in)

This is an enterprise app built using RSpec and Capybara, TDD/BDD methods. There is a background job that sends out SMS messages via Twilio and emails via google.


## Requirements:
A company needs to document whether salaried employees worked overtime each week:

Managers receive an email link to a list of pending OT requests. These will be viewed on a desktop.
Employees will mostly receive notifications via phone, so sending a reminder by text is optimal.

Update: The company liked the MVP well enough to add more features: all employees will track all hours, so a text will be sent daily. 

This company only has about 1000 employees, but some with the same first and last name. The last four of the SSN will be used to differentiate these employees. Since this is a code-along, I am following with the company requirements as presented.

## Models: 
* Post: date, rationale
* User: using devise with admin

## Features:
Admin approves workflow | 
sends SMS with link for employee to input OT | 
Admin dashboard | 
Email summary to managers for approval | 
Needs to document if employee did not log OT | 

## New to me:
* TDD/BDD in rails
* Use Warden to mimic signing in for feature test
* Skip registration in Devise
* Use the administrate gem for an admin dashboard
* Use Single-Table Inheritance pattern (STI) for admin, employee as types of user
	* Add self-referential assoc: manager has many employees(hands)
* Use the pundit gem for permissions
* Send text using Twilio API
* == outputs raw
* Honeybadger (reviewed, todo: implement)
* New Relic

## Refactor TODOS:
- Refactor user association integration test in post_spec
- Rector posts/_form for admin user with status
- Fix bootstrap tables in chrome (cols)
- Edit icon
- Block styling
- Upgrade email from sendgrid to google

- Add name to navbar
- Add cal button to show month for user to see when check dates
<!-- He uses STI, I'm using polymorphic (i think it's been a while. confirm if all is still good...) -->

### Testing: Rspec, Capybara, FactoryBot 6


### He uses Gritter/Growl notifications, which was recently retired. I'm using JS for now. He also used SendGrid for Heroku messages. I will attempt google.


Uses: Ruby 2.6.3, Rails: 6.1.2, PostgresSql: 13.1, BS: 4.6, Font Awesome


Devise for auth | 
Pundit 2.1 for permissions

Upgrades:  name_of_person instead of custom model method, 
Figure out breaking changes in growl notification, Factory Bot, enums in adminstrate,


This app was built in Feb and May 2021 as a code along by [Jordan Hudgens](https://www.udemy.com/course/professional-ruby-on-rails-coding-course/learn/lecture/5529548#overview). Although I've done systems testing before, I'm not sure of how much unit testing to include, and hoped this course would help answer that. The code along is Rails 4, but I built it using Rails 6. Hopefully not too many breaking changes as I go along. 

Update some of the front-end to React: Aug 21

<!-- getting the rvm error i'd gotten before but need internet so i'll come back to this -->
<!-- do a migration
rails g migration add_daily_hours_to_posts
in file: rename_column :posts, :overtime_request, :daily_hours
rake db:migrate
check in scheme
do a search for overtime_request, examine each instead of fine/replace
add 12.5 to seeds
8.0 and 12.5  to factory
update test info hours

in nav, change req ot to "Submit hours"
post index, --> 

<!-- Hours

post show page: hours worked
resolve #x in commit msg
create new issue: swap out rationale for work_performed
(same method as above) -->






 -->