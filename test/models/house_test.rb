require 'test_helper'

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'search exact match' do
    houses = House.search('mls', "52")
    assert houses.count == 1
    assert houses.first.mls == 52

    houses = House.search('state', "Oregon")
    assert houses.count == 1
    assert houses.first.state == "Oregon"

    houses = House.search('zipcode', "97203")
    assert houses.count == 2
    assert houses.first.zipcode == 97203
  end

  test 'search partial match' do
    houses = House.search('city', "Portland")
    assert houses.count == 1
    assert houses.first.city == "Portland"

    houses = House.search('city', "portlan") #misspelled
    assert houses.count == 1
    assert houses.first.city == "Portland"
  end

  test 'search range' do
    houses = House.search('bedrooms', "", "2", "2")
    assert houses.count == 1
    assert houses.first.bedrooms == 2

    houses = House.search('bedrooms', "", "1", "2")
    assert houses.count == 3

    houses = House.search('bathrooms', "", "2", "2")
    assert houses.count == 1
    assert houses.first.bathrooms == 2

    houses = House.search('square_feet', "", "1900", "2100")
    assert houses.count == 1
    assert houses.first.square_feet == 2000
  end
end
