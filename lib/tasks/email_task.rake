namespace :email_task do
  desc "Will send lolcat do subscriptioner"
  task task1: :environment do
  	SubscriptionMailer.welcome_email(Subscription.first).deliver
  end

end
