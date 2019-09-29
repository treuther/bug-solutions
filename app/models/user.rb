class User < ActiveRecord::Base
    has_many :products
    has_many :bugs, :through => :products
end