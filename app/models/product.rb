class Product < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    has_one :opsystem, class_name: "Opsystem",
                        foreign_key: "opsystem_id"
    validates_presence_of :name, :price
    validates_numericality_of :price
    def opsystem

    end
end
