require 'test_helper'

class HerramientaControllerTest < ActionController::TestCase
  setup do
    @herramientum = herramienta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:herramienta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create herramientum" do
    assert_difference('Herramientum.count') do
      post :create, herramientum: { de_un_juego: @herramientum.de_un_juego, estado: @herramientum.estado, factura: @herramientum.factura, marca: @herramientum.marca, material: @herramientum.material, no_bien_nac: @herramientum.no_bien_nac, nombre: @herramientum.nombre, responsable: @herramientum.responsable, tipo: @herramientum.tipo, ubicacion: @herramientum.ubicacion, uso: @herramientum.uso }
    end

    assert_redirected_to herramientum_path(assigns(:herramientum))
  end

  test "should show herramientum" do
    get :show, id: @herramientum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @herramientum
    assert_response :success
  end

  test "should update herramientum" do
    patch :update, id: @herramientum, herramientum: { de_un_juego: @herramientum.de_un_juego, estado: @herramientum.estado, factura: @herramientum.factura, marca: @herramientum.marca, material: @herramientum.material, no_bien_nac: @herramientum.no_bien_nac, nombre: @herramientum.nombre, responsable: @herramientum.responsable, tipo: @herramientum.tipo, ubicacion: @herramientum.ubicacion, uso: @herramientum.uso }
    assert_redirected_to herramientum_path(assigns(:herramientum))
  end

  test "should destroy herramientum" do
    assert_difference('Herramientum.count', -1) do
      delete :destroy, id: @herramientum
    end

    assert_redirected_to herramienta_path
  end
end
