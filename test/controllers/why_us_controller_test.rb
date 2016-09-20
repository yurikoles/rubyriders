require 'test_helper'

class WhyUsControllerTest < ActionController::TestCase
  def setup
    @controller = WhyUsController.new
  end
  test "should get index" do
    get :index
    assert_response :success
  end

end
