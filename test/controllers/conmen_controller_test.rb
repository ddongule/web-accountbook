require 'test_helper'

class ConmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conman = conmen(:one)
  end

  test "should get index" do
    get conmen_url
    assert_response :success
  end

  test "should get new" do
    get new_conman_url
    assert_response :success
  end

  test "should create conman" do
    assert_difference('Conman.count') do
      post conmen_url, params: { conman: { election: @conman.election, gusigun: @conman.gusigun, names: @conman.names, sido: @conman.sido } }
    end

    assert_redirected_to conman_url(Conman.last)
  end

  test "should show conman" do
    get conman_url(@conman)
    assert_response :success
  end

  test "should get edit" do
    get edit_conman_url(@conman)
    assert_response :success
  end

  test "should update conman" do
    patch conman_url(@conman), params: { conman: { election: @conman.election, gusigun: @conman.gusigun, names: @conman.names, sido: @conman.sido } }
    assert_redirected_to conman_url(@conman)
  end

  test "should destroy conman" do
    assert_difference('Conman.count', -1) do
      delete conman_url(@conman)
    end

    assert_redirected_to conmen_url
  end
end
