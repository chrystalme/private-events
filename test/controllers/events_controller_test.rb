require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get new" do
    get events_new_url
    assert_response :success
  end

  test "should get index" do
    get events_index_url
    assert_response :success
  end
>>>>>>> dd4ec7d55667483125df01c863d8106849ec84e5
end
