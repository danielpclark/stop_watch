require 'test_helper'
include StopWatch

class StopWatchTest < Minitest::Test
  def setup
    @t = Timer.new
    3.times do
      @t.mark
      sleep 0.05
    end
  end

  def test_total
    assert @t.total > 0
  end

  def test_clock_display
    assert_match(/\A\d{2}:\d{2}:\d{2}\z/, @t.h)
  end

  def test_times_exist
    assert @t.time?
  end

  def test_it_marks_numbers_of_time_progress
    assert_equal 2, @t.times.length
  end

  def test_times_are_greater_than_zero
    assert @t.times.all? { |t| t > 0 }
  end

  def test_times_are_floats
    assert @t.times.all? { |t| t.is_a? Float }
  end
end
