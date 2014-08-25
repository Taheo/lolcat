class SubscriptionsController < ApplicationController
	def new
		@subscription = Subscription.new 
        @kitties = Kitty.where.not('sent_at' => nil).order("created_at").page(params[:page]).per(1)
	end

	def create
	  @subscription = Subscription.new(subscription_params)
	 
	  if @subscription.save
	  	flash[:notice] = "Subscription successfully created"
	  	kitty = Kitty.where.not('sent_at' => nil).order('sent_at DESC').first
      	SubscriptionMailer.welcome_email(@subscription, kitty).deliver
	  	redirect_to root_path
	  else
        @kitties = Kitty.where.not('sent_at' => nil).order("created_at").page(params[:page]).per(1)
		render 'new'
	  end
	end

	def unsub

	  @subscription = Subscription.where(email: params[:email])
	  @subscription.destroy_all
	  redirect_to root_path
    end

  	def default_url_options
      { locale: I18n.locale }
  	end
 
private
  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
