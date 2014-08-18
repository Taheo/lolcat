class SubscriptionsController < ApplicationController
	def new
		@subscription = Subscription.new 
	end
	def create
	  @subscription = Subscription.new(subscription_params)
	 
	  	if @subscription.save
	  	flash[:notice] = "Subscription successfully created"
      SubscriptionMailer.welcome_email(@subscription).deliver
	  redirect_to root_path
		else
		render 'new'
		end
	end
	#def unsub
    #end
 
private
  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
