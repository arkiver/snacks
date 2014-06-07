class Snack < ActiveRecord::Base
  has_many :orders
end
