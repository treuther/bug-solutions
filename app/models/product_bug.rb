class ProductBug < ActiveRecord::Base
    belongs_to :bug
    belongs_to :product
end