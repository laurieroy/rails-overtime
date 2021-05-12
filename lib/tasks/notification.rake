namespace :notification do
  desc "Send SMS notification to employees asking them to log whether they have overtime"
  task sms: :environment do
    # schedule to run at Sunday at 5pm
    # iterate over all employees
    # User.all.each do |user|
    #   SmsTool.send_sms()
    # end
    # skip admin users
    # send a msg with instructions and a link to log time
  end

  desc "Send email notification to admin users daily to inform of pending overtime request"
  task manager_email: :environment do
    # schedule to run daily at 5pm
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
