class User < ActiveRecord::Base
  ActiveAdmin.register User do  
  index do  
    column :email  

      
  end  
end  
end
