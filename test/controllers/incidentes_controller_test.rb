require 'test_helper'

class IncidentesControllerTest < ActionController::TestCase
  setup do
    @incidente = incidentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incidente" do
    assert_difference('Incidente.count') do
      post :create, incidente: { asunto: @incidente.asunto, descripcion: @incidente.descripcion, prioridad: @incidente.prioridad, responsable: @incidente.responsable, tipo: @incidente.tipo }
    end

    assert_redirected_to incidente_path(assigns(:incidente))
  end

  test "should show incidente" do
    get :show, id: @incidente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incidente
    assert_response :success
  end

  test "should update incidente" do
    patch :update, id: @incidente, incidente: { asunto: @incidente.asunto, descripcion: @incidente.descripcion, prioridad: @incidente.prioridad, responsable: @incidente.responsable, tipo: @incidente.tipo }
    assert_redirected_to incidente_path(assigns(:incidente))
  end

  test "should destroy incidente" do
    assert_difference('Incidente.count', -1) do
      delete :destroy, id: @incidente
    end

    assert_redirected_to incidentes_path
  end
end
