namespace :notification do
  desc "Sends SMS notification to employees asking them to log whether or not they have overtime"
  task sms: :environment do
    # if Time.now.sunday?
      employees = Employee.all
      employees.each do |employee|
        notification_msg = "Please log into the OT management dashboard to confirm hours for last week / request OT: https://laurie-overtime.herokuapp.com/ "
        SmsTool.send_sms(number: employee.phone, message: notification_msg)
      end
    # end
  end

  desc "Send email notification to admin users daily to inform of pending overtime request"
  task manager_email: :environment do
    # schedule to run daily at 430 PDT on Heroku pm
    # iterate over pending overtime request
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_now
      end
    end
    # check if there are any requests

  end

end
