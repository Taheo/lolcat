class SubscriptionMailer < ActionMailer::Base
  default :from => 'subscription345@gmail.com'
#@subscription = subscription
  def welcome_email(subscription, kitty)   
    @image_path = "http://localhost:3000#{kitty.image.url}"

    mail( :to => subscription.email, :subject => 'Thanks for signing up for Daily Lolcat app' )
  end
end
