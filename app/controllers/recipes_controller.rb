class RecipesController < ApplicationController

  hobo_model_controller

  auto_actions :all

  auto_actions_for :user, [:index, :new, :create]

end
