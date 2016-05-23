class Comment < ActiveRecord::Base
    # attr_accessor :product_id, :user_id
    belongs_to :product
    belongs_to :user
end