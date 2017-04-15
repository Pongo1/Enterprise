require 'test_helper'

class BdaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bdae = bdaes(:one)
  end

  test "should get index" do
    get bdaes_url
    assert_response :success
  end

  test "should get new" do
    get new_bdae_url
    assert_response :success
  end

  test "should create bdae" do
    assert_difference('Bdae.count') do
      post bdaes_url, params: { bdae: { date: @bdae.date, firstname: @bdae.firstname, lastname: @bdae.lastname } }
    end

    assert_redirected_to bdae_url(Bdae.last)
  end

  test "should show bdae" do
    get bdae_url(@bdae)
    assert_response :success
  end

  test "should get edit" do
    get edit_bdae_url(@bdae)
    assert_response :success
  end

  test "should update bdae" do
    patch bdae_url(@bdae), params: { bdae: { date: @bdae.date, firstname: @bdae.firstname, lastname: @bdae.lastname } }
    assert_redirected_to bdae_url(@bdae)
  end

  test "should destroy bdae" do
    assert_difference('Bdae.count', -1) do
      delete bdae_url(@bdae)
    end

    assert_redirected_to bdaes_url
  end
end
