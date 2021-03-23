namespace :notification do
  desc "Send SMS notification to employees asking them to log whether they have overtime"
  task sms: :environment do
    # schedule to run at Sunday at 5pm
    # iterate over all employees
    User.all.each do |user|
      SmsTool.send_sms()
    end
    # skip admin users
    # send a msg with instructions and a link to log time
  end

end
