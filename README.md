# Overtime App

## Requirements:
Company needs documentation whether salaried employees worked overtime each week

## Models: 
* Post: date, rationale
* User: using devise with admin

## Features:
Admin approves workflow
SMS sending with link to OT input
Admin dashboard
Email summary to managers for approval
Needs to document if employee did not log OT

## New to me:
* TDD/BDD in rails
* Use warden to sign in for feature test


## Refactor TODOS:
- Refactor user association integration test in post_spec


### Testing: Rspec, Capybara, FactoryBot

### He uses Growl notifications, which was recently retired. I'm using JS for now, will add in something later

Uses: Ruby 2.6.3, Rails: 6.1.2, PG: 13.1, BS: 4.6, Font Awesome

This app was built in Feb 2021 as a code along by [Jordan Hudgens](https://www.udemy.com/course/professional-ruby-on-rails-coding-course/learn/lecture/5529548#overview). Although I've done systems testing before, I'm not sure of how much unit testing to include, and hoped this course would help answer that. The code along is Rails 4, but I'm using Rails 6. Hopefully not too many breaking changes. 

