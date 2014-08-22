ActiveAdmin.register Kitty do
  permit_params :image

  #controller do 
    def pag 
      @Kitties = Kitty.order("created_at").page(params[:page])
    end
  #end

    index do
       
      column :created_at
      column :updated_at
      column :image
      column :sent_at
    end
  

  
  form do |f|
    f.inputs "Kitty" do
    f.input :image, :as => :file
    end
    f.actions
    end
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
#end
