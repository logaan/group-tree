class Person < ActiveRecord::Base
  has_many :memberships
  has_many :groups, :through => :memberships
end
