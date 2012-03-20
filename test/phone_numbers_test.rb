require 'test_helper'

class PhoneNumbersTest < Test::Unit::TestCase
  def test_returns_a_struct
    assert_instance_of CountryCodes::Entry, CountryCodes.from_phone_number("+19235238497")
  end

  def test_nil_is_returned_when_no_match
    assert_nil CountryCodes.from_phone_number("+000000000")
  end

  def test_usa_is_identified
    assert_equal CountryCodes.from_phone_number("+19254564931").calling_code, 1
    assert_not_equal CountryCodes.from_phone_number("+134023489713").calling_code, 1
  end

  def test_virigin_islands_are_identified
    assert_equal CountryCodes.from_phone_number("+134023489713").calling_code, 1340
  end
end
