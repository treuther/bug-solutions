class ProductBug < ActiveRecord::Base
    belongs_to :bug
    belongs_to :product

    # include Slugifiable::InstanceMethods
    # extend Slugifiable::ClassMethods
end