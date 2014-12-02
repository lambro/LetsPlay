require 'test_helper'

class GamingsessionsControllerTest < ActionController::TestCase
  setup do
    @gamingsession = gamingsessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamingsessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gamingsession" do
    assert_difference('Gamingsession.count') do
      post :create, gamingsession: { active: @gamingsession.active, console_id1: @gamingsession.console_id1, console_id2: @gamingsession.console_id2, console_id3: @gamingsession.console_id3, created_by: @gamingsession.created_by, description: @gamingsession.description, gsdate: @gamingsession.gsdate, location_name: @gamingsession.location_name, max_age_limit: @gamingsession.max_age_limit, min_age_limit: @gamingsession.min_age_limit, online: @gamingsession.online, postcode: @gamingsession.postcode, title: @gamingsession.title }
    end

    assert_redirected_to gamingsession_path(assigns(:gamingsession))
  end

  test "should show gamingsession" do
    get :show, id: @gamingsession
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gamingsession
    assert_response :success
  end

  test "should update gamingsession" do
    put :update, id: @gamingsession, gamingsession: { active: @gamingsession.active, console_id1: @gamingsession.console_id1, console_id2: @gamingsession.console_id2, console_id3: @gamingsession.console_id3, created_by: @gamingsession.created_by, description: @gamingsession.description, gsdate: @gamingsession.gsdate, location_name: @gamingsession.location_name, max_age_limit: @gamingsession.max_age_limit, min_age_limit: @gamingsession.min_age_limit, online: @gamingsession.online, postcode: @gamingsession.postcode, title: @gamingsession.title }
    assert_redirected_to gamingsession_path(assigns(:gamingsession))
  end

  test "should destroy gamingsession" do
    assert_difference('Gamingsession.count', -1) do
      delete :destroy, id: @gamingsession
    end

    assert_redirected_to gamingsessions_path
  end
end
