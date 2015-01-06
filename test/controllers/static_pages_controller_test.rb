require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get exhibits" do
    get :exhibits
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get faqs" do
    get :faqs
    assert_response :success
  end

  test "should get research_help" do
    get :research_help
    assert_response :success
  end

  test "should get schedule" do
    get :schedule
    assert_response :success
  end

  test "should get speakers" do
    get :speakers
    assert_response :success
  end

end
