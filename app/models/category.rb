class Category < ActiveRecord::Base
   has_many :products  
    def self.search(search)
      where("name LIKE ?", "%#{search}%")
    end
end