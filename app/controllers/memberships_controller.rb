class MembershipsController < ApplicationController
  make_resourceful do
    actions :index, :show
    publish :json, :attributes => [:id, :group_id, :person_id]
  end
end
