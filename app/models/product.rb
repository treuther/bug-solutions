class Product < ActiveRecord::Base
    belongs_to :user
    has_many :product_bugs
    has_many :bugs, :through => :product_bugs
end