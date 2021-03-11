require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test 'validate' do
    event = Event.new
    assert_not event.save, 'Event must contain all fields'
  end
  # test "the truth" do
  #   assert true
  # end
end
