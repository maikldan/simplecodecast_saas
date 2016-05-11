class Product < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    has_one :opsystem
    validates_presence_of :name, :price
    validates_numericality_of :price
 
end
