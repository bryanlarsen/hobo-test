require 'test_helper'
require 'integration/integration_test_helper'

class FoosBasicTestTest < ActionController::IntegrationTest
  include IntegrationTestHelper
  scenario "empty"
  
  test "recipes" do
    login_administrator
    visit "/users/1/recipes"
    assert_contain "No recipes to display"
    click_link "New Recipe"
    fill_in "recipe[name]", :with => "Goulash"
    select "Test User", :from => "recipe[user_id]"
    click_button "Create Recipe"
    visit "/users/1/recipes"
    assert_contain "There is 1 Recipe"
    assert_contain "Goulash"
  end

  test "groups" do
    login_administrator
    visit "/users/1/groups"
    assert_contain "No groups to display"
    click_link "New Group"
    fill_in "group[name]", :with => "Miscreants"
    click_button "Create Group"

    click_link "Memberships"
    click_link "New Membership"
    select "Miscreants", :from => "membership[group_id]"
    select "Test User", :from => "membership[user_id]"
    click_button "Create Membership"
    
    visit "/users/1/groups"
    assert_contain "There is 1 Group"
    assert_contain "Miscreants"
  end
end
