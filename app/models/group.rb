class Group < ActiveRecord::Base
  # Validations
  validates_presence_of   :name
  validates_uniqueness_of :name

  # Plugins
  acts_as_tree

  # Virtual Attributes
  alias_method :groups, :children
end
