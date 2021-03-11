require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'validate' do
    user = User.new
    assert_not user.save, 'User has not saving with name'
  end

  test 'associations' do
    should belongs_to :event_attendances
  end
end
