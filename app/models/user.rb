class User < ApplicationRecord
  acts_as_mappable :default_units => :kms,
                   :default_formula => :sphere,
                   :lat_column_name => :lat,
                   :lng_column_name => :lng
  validates :name, presence: true
  validates :lat, presence: true
  validates :lng, presence: true  
end
