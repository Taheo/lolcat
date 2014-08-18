class SubscriptionMailer < ActionMailer::Base
  default :from => 'subscription345@gmail.com'
#@subscription = subscription
  def welcome_email(subscription)   
    @image_path = "localhost:3000#{Kitty.all.sample.image}" 
    mail( :to => subscription.email,
    :subject => 'Thanks for signing up for Daily Lolcat app' )

    #attachments['test_lolcat'] = open('home/lolcat/public/uploads/kitty/image/9/test_lolcat.jpg').read
    #attachments.inline['test_lolcat.jpg'] = File.read("#{Rails.root}/uploads/kitty/9/test_lolcat.jpg") 
    #attachments.inline["#{test_lolcat.title}"] = File.read(test_lolcat.file)
    #attachments.inline["test_lolcat.jpg"] = File.read("#{Rails.root}/public/uploads/kitty/image/9/test_lolcat.jpg")
    ##attachments['test_lolcat.jpg'] = File.read('/home/lolcat/public/uploads/kitty/image/9/test_lolcat.jpg') 
    #File.read('uploads/kitty/image/8/test.jpg')
    #File.read('/image/8/test.jpg') 
    #File.read('#{Rails.root}/uploads/kitty/image/8/test.jpg') 
    #kitty_image_path
    #Rails.root.join
  end
end

###
#class UserMailer < ActionMailer::Base
#  def test_email(user_id)
#    @subscription = Subscription.find_by_id user_id

    #if (@subscription)
      #to = @subscription.email

     # mail(:to => to, :subject => "test email", :from => "default_sender@foo.bar") do |format|
    #    format.text(:content_type => "text/plain", :charset => "UTF-8", :content_transfer_encoding => "7bit")
   #   end
  #  end
 # end
#end
####
#end
####
#class SubscriptionMailer < ActionMailer::Base
  #default from: "from@example.com"

	 #def welcome_email(subscription)
 	#@subscription = subscription
 	#recipients subscription.email
 	#	@url
 	#from "webmaster@example.com"
 	#subject "Thank you for Registering"
 	#body "Hi"
    #mail(to: @subscription.email, subject: 'Your lolcat of the day')
	#end
#end