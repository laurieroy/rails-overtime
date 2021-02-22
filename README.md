# Overtime App
This is an enterprise app built using RSpec and Capybara, TDD/BDD methods. It is a code-along that was originally filmed in Jul 2016, so is a bit dated. 

## Requirements:
A company needs documentation whether salaried employees worked overtime each week

## Models: 
* Post: date, rationale
* User: using devise with admin

## Features:
Admin approves workflow |
SMS sending with link to OT input |
Admin dashboard |
Email summary to managers for approval |
Needs to document if employee did not log OT |

## New to me:
* TDD/BDD in rails
* Use Warden to mimic signing in for feature test
* Skip registration in Devise
* Use the administrate gem for an admin dashboard
* Use the pundit gem for permissions

## Refactor TODOS:
- Refactor user association integration test in post_spec
- Rector posts/_form for admin user with status
- Fix admin check on nav
- Fix posts.spec, posts in factory (not define user there)
- Fix using update in del test (temp get around current_user) 

### Testing: Rspec, Capybara, FactoryBot 6

### He uses Gritter/Growl notifications, which was recently retired. I'm using JS for now, will add in something later

Uses: Ruby 2.6.3, Rails: 6.1.2, PostgresSql: 13.1, BS: 4.6, Font Awesome

Devise for auth |
Pundit 2.1 for permissions

Upgrades:  name_of_person instead of custom model method, 
Figure out breaking changes in growl notification, Factory Bot, enums in adminstrate,
Originally used STI for admin,

This app was built in Feb 2021 as a code along by [Jordan Hudgens](https://www.udemy.com/course/professional-ruby-on-rails-coding-course/learn/lecture/5529548#overview). Although I've done systems testing before, I'm not sure of how much unit testing to include, and hoped this course would help answer that. The code along is Rails 4, but I'm using Rails 6. Hopefully not too many breaking changes. 

