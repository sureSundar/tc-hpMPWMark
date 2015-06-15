require 'test_helper'

class RegionsControllerTest < ActionController::TestCase
  setup do
    @region = regions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create region" do
    assert_difference('Region.count') do
      post :create, region: { height: @region.height, image_id: @region.image_id, link: @region.link, name: @region.name, original: @region.original, payoff_id: @region.payoff_id, top_left_x: @region.top_left_x, top_left_y: @region.top_left_y, trigger: @region.trigger, watermark: @region.watermark, watermark_resolution: @region.watermark_resolution, watermark_strength: @region.watermark_strength, width: @region.width }
    end

    assert_redirected_to region_path(assigns(:region))
  end

  test "should show region" do
    get :show, id: @region
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @region
    assert_response :success
  end

  test "should update region" do
    patch :update, id: @region, region: { height: @region.height, image_id: @region.image_id, link: @region.link, name: @region.name, original: @region.original, payoff_id: @region.payoff_id, top_left_x: @region.top_left_x, top_left_y: @region.top_left_y, trigger: @region.trigger, watermark: @region.watermark, watermark_resolution: @region.watermark_resolution, watermark_strength: @region.watermark_strength, width: @region.width }
    assert_redirected_to region_path(assigns(:region))
  end

  test "should destroy region" do
    assert_difference('Region.count', -1) do
      delete :destroy, id: @region
    end

    assert_redirected_to regions_path
  end
end
