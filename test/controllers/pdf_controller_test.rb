require 'test_helper'

class PdfControllerTest < ActionController::TestCase
  test "should get download_pdf" do
    get :download_pdf
    assert_response :success
  end

end
