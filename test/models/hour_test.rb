require 'test_helper'

class HourTest < ActiveSupport::TestCase
  test "show only the hour part" do
    h = hours(:one)
    assert_equal "16:30:59", h.only_hour
  end
end
