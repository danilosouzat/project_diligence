require 'test_helper'

class DiligencesControllerTest < ActionController::TestCase
  setup do
    @diligence = diligences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diligences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diligence" do
    assert_difference('Diligence.count') do
      post :create, diligence: { corpo: @diligence.corpo, data_fim: @diligence.data_fim, data_inicio: @diligence.data_inicio, status: @diligence.status, titulo: @diligence.titulo }
    end

    assert_redirected_to diligence_path(assigns(:diligence))
  end

  test "should show diligence" do
    get :show, id: @diligence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diligence
    assert_response :success
  end

  test "should update diligence" do
    patch :update, id: @diligence, diligence: { corpo: @diligence.corpo, data_fim: @diligence.data_fim, data_inicio: @diligence.data_inicio, status: @diligence.status, titulo: @diligence.titulo }
    assert_redirected_to diligence_path(assigns(:diligence))
  end

  test "should destroy diligence" do
    assert_difference('Diligence.count', -1) do
      delete :destroy, id: @diligence
    end

    assert_redirected_to diligences_path
  end
end
