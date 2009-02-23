class GroupsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :group
    publish :json, :attributes => [:parent_id, :name]
  end
end
