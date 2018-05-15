require 'test_helper'

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  test "should get reserved_at:date" do
    get reservations_reserved_at:date_url
    assert_response :success
  end

  test "should get event_category:collection" do
    get reservations_event_category:collection_url
    assert_response :success
  end

end
