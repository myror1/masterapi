require 'test_helper'

class TerminalsControllerTest < ActionController::TestCase
  setup do
    @terminal = terminals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminals)
  end

  test "should create terminal" do
    assert_difference('Terminal.count') do
      post :create, terminal: { attribute_values: @terminal.attribute_values, description: @terminal.description, name: @terminal.name }
    end

    assert_response 201
  end

  test "should show terminal" do
    get :show, id: @terminal
    assert_response :success
  end

  test "should update terminal" do
    put :update, id: @terminal, terminal: { attribute_values: @terminal.attribute_values, description: @terminal.description, name: @terminal.name }
    assert_response 204
  end

  test "should destroy terminal" do
    assert_difference('Terminal.count', -1) do
      delete :destroy, id: @terminal
    end

    assert_response 204
  end
end
