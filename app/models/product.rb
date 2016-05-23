class Product < ActiveRecord::Base
    mount_uploader :image, ImageUploader
    
    belongs_to :opsystem
    belongs_to :category
    validates_presence_of :name, :price
    validates_numericality_of :price
    

    has_many :comments, dependent: :destroy
    
    def self.search(search)
      where("name LIKE ?", "%#{search}%")
      
    end
end
