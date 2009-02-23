class GroupsController < ApplicationController
  make_resourceful do
    actions :all
    belongs_to :group, :person
    publish :json, :attributes => [:id, :parent_id, :name, :membership_ids]

    before :new do
      @form_models = @person ? [@person, @group] : @group
    end

    before :create do
      current_object.memberships.build(:person => @person) if @person
    end
  end

  def current_objects
    @current_objects ||= parent_model ?
      current_model.find(:all) : current_model.roots
  end
end
