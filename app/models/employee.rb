class Employee < ApplicationRecord
    belongs_to :brand
    belongs_to :quantity
    belongs_to :type
end
