class GroupsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :group
  end
end
