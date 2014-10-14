require 'test_helper'

class ConsumiblesControllerTest < ActionController::TestCase
  setup do
    @consumible = consumibles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consumibles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consumible" do
    assert_difference('Consumible.count') do
      post :create, consumible: { cantidad: @consumible.cantidad, descripcion: @consumible.descripcion, dimensiones: @consumible.dimensiones, material: @consumible.material, nombre: @consumible.nombre, responsable: @consumible.responsable, ubicacion: @consumible.ubicacion, uso: @consumible.uso }
    end

    assert_redirected_to consumible_path(assigns(:consumible))
  end

  test "should show consumible" do
    get :show, id: @consumible
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consumible
    assert_response :success
  end

  test "should update consumible" do
    patch :update, id: @consumible, consumible: { cantidad: @consumible.cantidad, descripcion: @consumible.descripcion, dimensiones: @consumible.dimensiones, material: @consumible.material, nombre: @consumible.nombre, responsable: @consumible.responsable, ubicacion: @consumible.ubicacion, uso: @consumible.uso }
    assert_redirected_to consumible_path(assigns(:consumible))
  end

  test "should destroy consumible" do
    assert_difference('Consumible.count', -1) do
      delete :destroy, id: @consumible
    end

    assert_redirected_to consumibles_path
  end
end
