class Group < ActiveRecord::Base
  # Relationships
  has_many :memberships
  has_many :people, :through => :memberships

  # Validations
  validates_presence_of   :name
  validates_uniqueness_of :name

  # Plugins
  acts_as_tree

  # Virtual Attributes
  alias_method :groups, :children
end
