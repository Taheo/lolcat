namespace :email_task do
  desc "Will send lolcat do subscriptioner"
  task task1: :environment do
  	kitty = Kitty.where(sent_at: nil).take
  	kitty.publish!
  	###
  	Subscription.all.each do |subscription|
  	  SubscriptionMailer.welcome_email(subscription, kitty).deliver
    end
  end
end
