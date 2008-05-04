require File.dirname(__FILE__) + '/../test_helper'

class BrokersControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:brokers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_broker
    assert_difference('Broker.count') do
      post :create, :broker => { }
    end

    assert_redirected_to broker_path(assigns(:broker))
  end

  def test_should_show_broker
    get :show, :id => brokers(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => brokers(:one).id
    assert_response :success
  end

  def test_should_update_broker
    put :update, :id => brokers(:one).id, :broker => { }
    assert_redirected_to broker_path(assigns(:broker))
  end

  def test_should_destroy_broker
    assert_difference('Broker.count', -1) do
      delete :destroy, :id => brokers(:one).id
    end

    assert_redirected_to brokers_path
  end
end
