require 'test_helper'

class SlothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sloth = sloths(:one)
  end

  test "should get index" do
    get sloths_url
    assert_response :success
  end

  test "should get new" do
    get new_sloth_url
    assert_response :success
  end

  test "should create sloth" do
    assert_difference('Sloth.count') do
      post sloths_url, params: { sloth: { color: @sloth.color, fluffiness: @sloth.fluffiness, paws: @sloth.paws } }
    end

    assert_redirected_to sloth_url(Sloth.last)
  end

  test "should show sloth" do
    get sloth_url(@sloth)
    assert_response :success
  end

  test "should get edit" do
    get edit_sloth_url(@sloth)
    assert_response :success
  end

  test "should update sloth" do
    patch sloth_url(@sloth), params: { sloth: { color: @sloth.color, fluffiness: @sloth.fluffiness, paws: @sloth.paws } }
    assert_redirected_to sloth_url(@sloth)
  end

  test "should destroy sloth" do
    assert_difference('Sloth.count', -1) do
      delete sloth_url(@sloth)
    end

    assert_redirected_to sloths_url
  end
end
