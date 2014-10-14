require 'test_helper'

class InstrumentosControllerTest < ActionController::TestCase
  setup do
    @instrumento = instrumentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instrumentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrumento" do
    assert_difference('Instrumento.count') do
      post :create, instrumento: { capacidad: @instrumento.capacidad, estado: @instrumento.estado, marca: @instrumento.marca, material: @instrumento.material, modelo: @instrumento.modelo, no_bien_nac: @instrumento.no_bien_nac, nombre: @instrumento.nombre, responsable: @instrumento.responsable, ubicacion: @instrumento.ubicacion, ultima_calibracion: @instrumento.ultima_calibracion, unidad_medida: @instrumento.unidad_medida, uso: @instrumento.uso }
    end

    assert_redirected_to instrumento_path(assigns(:instrumento))
  end

  test "should show instrumento" do
    get :show, id: @instrumento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrumento
    assert_response :success
  end

  test "should update instrumento" do
    patch :update, id: @instrumento, instrumento: { capacidad: @instrumento.capacidad, estado: @instrumento.estado, marca: @instrumento.marca, material: @instrumento.material, modelo: @instrumento.modelo, no_bien_nac: @instrumento.no_bien_nac, nombre: @instrumento.nombre, responsable: @instrumento.responsable, ubicacion: @instrumento.ubicacion, ultima_calibracion: @instrumento.ultima_calibracion, unidad_medida: @instrumento.unidad_medida, uso: @instrumento.uso }
    assert_redirected_to instrumento_path(assigns(:instrumento))
  end

  test "should destroy instrumento" do
    assert_difference('Instrumento.count', -1) do
      delete :destroy, id: @instrumento
    end

    assert_redirected_to instrumentos_path
  end
end
