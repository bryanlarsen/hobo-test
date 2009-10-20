class GroupsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :members, [:index, :new, :create]

end
