require 'test_helper'

class SubstationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @substation = substations(:one)
  end

  test "should get index" do
    get substations_url
    assert_response :success
  end

  test "should get new" do
    get new_substation_url
    assert_response :success
  end

  test "should create substation" do
    assert_difference('Substation.count') do
      post substations_url, params: { substation: { capacidad: @substation.capacidad, direccion: @substation.direccion, encargado_apellidos: @substation.encargado_apellidos, encargado_nombre: @substation.encargado_nombre, extencion: @substation.extencion, fecha_puesta_servicio: @substation.fecha_puesta_servicio, nombre_subestacion: @substation.nombre_subestacion, subestacion_abbr: @substation.subestacion_abbr } }
    end

    assert_redirected_to substation_url(Substation.last)
  end

  test "should show substation" do
    get substation_url(@substation)
    assert_response :success
  end

  test "should get edit" do
    get edit_substation_url(@substation)
    assert_response :success
  end

  test "should update substation" do
    patch substation_url(@substation), params: { substation: { capacidad: @substation.capacidad, direccion: @substation.direccion, encargado_apellidos: @substation.encargado_apellidos, encargado_nombre: @substation.encargado_nombre, extencion: @substation.extencion, fecha_puesta_servicio: @substation.fecha_puesta_servicio, nombre_subestacion: @substation.nombre_subestacion, subestacion_abbr: @substation.subestacion_abbr } }
    assert_redirected_to substation_url(@substation)
  end

  test "should destroy substation" do
    assert_difference('Substation.count', -1) do
      delete substation_url(@substation)
    end

    assert_redirected_to substations_url
  end
end
