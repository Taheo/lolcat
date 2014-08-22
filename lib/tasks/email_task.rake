namespace :email_task do
  desc "Will send lolcat do subscriptioner"
  task task1: :environment do
  	kitty = Kitty.where(sent_at: nil).take
  	kitty.publish!
  	SubscriptionMailer.welcome_email(Subscription.first, kitty).deliver
  end

end
