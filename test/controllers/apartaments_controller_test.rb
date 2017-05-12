require 'test_helper'

class ApartamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @apartament = apartaments(:one)
  end

  test "should get index" do
    get apartaments_url, as: :json
    assert_response :success
  end

  test "should create apartament" do
    assert_difference('Apartament.count') do
      post apartaments_url, params: { apartament: { balance: @apartament.balance, checkin: @apartament.checkin, checkout: @apartament.checkout, number: @apartament.number } }, as: :json
    end

    assert_response 201
  end

  test "should show apartament" do
    get apartament_url(@apartament), as: :json
    assert_response :success
  end

  test "should update apartament" do
    patch apartament_url(@apartament), params: { apartament: { balance: @apartament.balance, checkin: @apartament.checkin, checkout: @apartament.checkout, number: @apartament.number } }, as: :json
    assert_response 200
  end

  test "should destroy apartament" do
    assert_difference('Apartament.count', -1) do
      delete apartament_url(@apartament), as: :json
    end

    assert_response 204
  end
end
