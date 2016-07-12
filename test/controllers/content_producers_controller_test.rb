require 'test_helper'

class ContentProducersControllerTest < ActionController::TestCase
  setup do
    @content_producer = content_producers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_producers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_producer" do
    assert_difference('ContentProducer.count') do
      post :create, content_producer: { name: @content_producer.name }
    end

    assert_redirected_to content_producer_path(assigns(:content_producer))
  end

  test "should show content_producer" do
    get :show, id: @content_producer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_producer
    assert_response :success
  end

  test "should update content_producer" do
    patch :update, id: @content_producer, content_producer: { name: @content_producer.name }
    assert_redirected_to content_producer_path(assigns(:content_producer))
  end

  test "should destroy content_producer" do
    assert_difference('ContentProducer.count', -1) do
      delete :destroy, id: @content_producer
    end

    assert_redirected_to content_producers_path
  end
end
