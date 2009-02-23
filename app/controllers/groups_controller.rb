class GroupsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :group
    publish :json, :attributes => [:id, :parent_id, :name, :membership_ids]
  end

  def current_objects
    @current_objects ||= parent_model ?
      current_model.find(:all) : current_model.roots
  end
end
