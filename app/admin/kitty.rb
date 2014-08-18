ActiveAdmin.register Kitty do
  permit_params :image

  #show do

  #end
  form do |f|
    f.inputs "Kitty" do
    f.input :image, :as => :file
    end
    f.actions
    end
  end

#ActiveAdmin.register Kitty do

    #index do
      #column :image
    #form(:html => { :multipart => true }) do |f|
    #f.inputs "Kitty" do
    #f.input :image, :as => :file
    #mount_uploader :file, ImageUploader
    #end
    
  #end
#end

 #mount_uploader :image, ImageUploader

     #index do 
   # column :image 

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
