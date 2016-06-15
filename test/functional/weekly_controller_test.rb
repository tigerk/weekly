require File.expand_path('../../test_helper', __FILE__)

class WeeklyControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  def test_index
    get :index

    assert_response :success
    assert_template 'index'
  end
end
