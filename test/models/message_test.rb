require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Text should be minimum 10 characters" do
    message = messages(:two)
    assert_not message.save
  end
end
