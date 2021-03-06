require 'test_helper'

class SessionsControllerTest < ActionController::TestCase

test "login with valid credentials" do
  post :create, :session => {:email => "megam@megam.co.in", :password => "password"}
  assert_equal flash[:success] , "Welcome Megam"
  assert_redirected_to dashboards_path
end

test "login with invalid credentials" do
  post :create, :session => {:email => "megam@megam.co.in", :password => "pass"}
  assert_equal flash[:error] , "Invalid username and password combination"
end



end
