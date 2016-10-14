require 'test_helper'

class CorrespondentesControllerTest < ActionController::TestCase
  setup do
    @correspondente = correspondentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correspondentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correspondente" do
    assert_difference('Correspondente.count') do
      post :create, correspondente: { cidade: @correspondente.cidade, cpf: @correspondente.cpf, email: @correspondente.email, nome: @correspondente.nome, observacao: @correspondente.observacao, telefone: @correspondente.telefone, uf: @correspondente.uf }
    end

    assert_redirected_to correspondente_path(assigns(:correspondente))
  end

  test "should show correspondente" do
    get :show, id: @correspondente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correspondente
    assert_response :success
  end

  test "should update correspondente" do
    patch :update, id: @correspondente, correspondente: { cidade: @correspondente.cidade, cpf: @correspondente.cpf, email: @correspondente.email, nome: @correspondente.nome, observacao: @correspondente.observacao, telefone: @correspondente.telefone, uf: @correspondente.uf }
    assert_redirected_to correspondente_path(assigns(:correspondente))
  end

  test "should destroy correspondente" do
    assert_difference('Correspondente.count', -1) do
      delete :destroy, id: @correspondente
    end

    assert_redirected_to correspondentes_path
  end
end
