require 'test_helper'

class BookmarksControllerTest < ActionController::TestCase
  test "should get integer:article_id" do
    get :integer:article_id
    assert_response :success
  end

  test "should get integer:user_id" do
    get :integer:user_id
    assert_response :success
  end

end
