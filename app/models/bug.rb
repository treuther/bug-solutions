class Bug < ActiveRecord::Base
    has_many :product_bugs
    has_many :products, :through => :product_bugs
    has_many :users, :through => :products

    include Slugifiable::InstanceMethods
    extend Slugifiable::ClassMethods
end