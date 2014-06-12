class Order < ActiveRecord::Base
  belongs_to :snack
  strip_attributes
end
