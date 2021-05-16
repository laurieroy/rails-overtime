# Overtime App
[demo](https://laurie-overtime.herokuapp.com/users/sign_in)

This is an enterprise app built using RSpec and Capybara, TDD/BDD methods. There is a background job that sends out SMS messages via Twilio and emails via google.


## Requirements:
A company needs to document whether salaried employees worked overtime each week

Managers receive this email link to a list of pending OT requests. These will be viewed on a desktop.
Employees will mostly receive notifications via phone so sending by text.

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
* Use the pundit gem for permissions
* Send text using Twilio API
* == outputs raw
* honeybadger
* new relic

## Refactor TODOS:
- Refactor user association integration test in post_spec
- Rector posts/_form for admin user with status
- Fix bootstrap tables in chrome (cols)
- Edit icon
- Block styling

- Add name to navbar
- Add cal button to show month for user to see when check dates


### Testing: Rspec, Capybara, FactoryBot 6

### He uses Gritter/Growl notifications, which was recently retired. I'm using JS for now, will add in something later

Uses: Ruby 2.6.3, Rails: 6.1.2, PostgresSql: 13.1, BS: 4.6, Font Awesome

Devise for auth | 
Pundit 2.1 for permissions

Upgrades:  name_of_person instead of custom model method, 
Figure out breaking changes in growl notification, Factory Bot, enums in adminstrate,
Originally used STI for admin, used polymorphic

This app was built in Feb and May 2021 as a code along by [Jordan Hudgens](https://www.udemy.com/course/professional-ruby-on-rails-coding-course/learn/lecture/5529548#overview). Although I've done systems testing before, I'm not sure of how much unit testing to include, and hoped this course would help answer that. The code along is Rails 4, but I built it using Rails 6. Hopefully not too many breaking changes as I go along. 

