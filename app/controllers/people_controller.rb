class PeopleController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :group
    publish :json, :attributes => [:id, :name, :membership_ids]
  end
end
