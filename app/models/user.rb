class User < ActiveRecord::Base

  has_many :predictions, :dependent => :destroy
  accepts_nested_attributes_for :predictions
  
end
