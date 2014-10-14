require 'test_helper'

class SustanciaQuimicasControllerTest < ActionController::TestCase
  setup do
    @sustancia_quimica = sustancia_quimicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sustancia_quimicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sustancia_quimica" do
    assert_difference('SustanciaQuimica.count') do
      post :create, sustancia_quimica: { CAS: @sustancia_quimica.CAS, caducidad: @sustancia_quimica.caducidad, cantidad: @sustancia_quimica.cantidad, controlado: @sustancia_quimica.controlado, estado_materia: @sustancia_quimica.estado_materia, nombre: @sustancia_quimica.nombre, peligro: @sustancia_quimica.peligro, pureza: @sustancia_quimica.pureza, regimen_legal: @sustancia_quimica.regimen_legal, responsable: @sustancia_quimica.responsable, status: @sustancia_quimica.status, ubicacion: @sustancia_quimica.ubicacion, uso: @sustancia_quimica.uso }
    end

    assert_redirected_to sustancia_quimica_path(assigns(:sustancia_quimica))
  end

  test "should show sustancia_quimica" do
    get :show, id: @sustancia_quimica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sustancia_quimica
    assert_response :success
  end

  test "should update sustancia_quimica" do
    patch :update, id: @sustancia_quimica, sustancia_quimica: { CAS: @sustancia_quimica.CAS, caducidad: @sustancia_quimica.caducidad, cantidad: @sustancia_quimica.cantidad, controlado: @sustancia_quimica.controlado, estado_materia: @sustancia_quimica.estado_materia, nombre: @sustancia_quimica.nombre, peligro: @sustancia_quimica.peligro, pureza: @sustancia_quimica.pureza, regimen_legal: @sustancia_quimica.regimen_legal, responsable: @sustancia_quimica.responsable, status: @sustancia_quimica.status, ubicacion: @sustancia_quimica.ubicacion, uso: @sustancia_quimica.uso }
    assert_redirected_to sustancia_quimica_path(assigns(:sustancia_quimica))
  end

  test "should destroy sustancia_quimica" do
    assert_difference('SustanciaQuimica.count', -1) do
      delete :destroy, id: @sustancia_quimica
    end

    assert_redirected_to sustancia_quimicas_path
  end
end
