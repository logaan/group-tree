class Group < ActiveRecord::Base
  acts_as_tree
  alias_method :groups, :children
end
