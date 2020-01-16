require 'test_helper'

class RegistrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro = registros(:one)
  end

  test "should get index" do
    get registros_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_url
    assert_response :success
  end

  test "should create registro" do
    assert_difference('Registro.count') do
      post registros_url, params: { registro: { adicional: @registro.adicional, comentarios: @registro.comentarios, dias_de_retraso: @registro.dias_de_retraso, direccion: @registro.direccion, estado: @registro.estado, fecha_salida: @registro.fecha_salida, guia: @registro.guia, ind_inter: @registro.ind_inter, informacion_adicional: @registro.informacion_adicional, intentos_de_entrega: @registro.intentos_de_entrega, nombre: @registro.nombre, promesa_de_entrega: @registro.promesa_de_entrega, ref: @registro.ref } }
    end

    assert_redirected_to registro_url(Registro.last)
  end

  test "should show registro" do
    get registro_url(@registro)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_url(@registro)
    assert_response :success
  end

  test "should update registro" do
    patch registro_url(@registro), params: { registro: { adicional: @registro.adicional, comentarios: @registro.comentarios, dias_de_retraso: @registro.dias_de_retraso, direccion: @registro.direccion, estado: @registro.estado, fecha_salida: @registro.fecha_salida, guia: @registro.guia, ind_inter: @registro.ind_inter, informacion_adicional: @registro.informacion_adicional, intentos_de_entrega: @registro.intentos_de_entrega, nombre: @registro.nombre, promesa_de_entrega: @registro.promesa_de_entrega, ref: @registro.ref } }
    assert_redirected_to registro_url(@registro)
  end

  test "should destroy registro" do
    assert_difference('Registro.count', -1) do
      delete registro_url(@registro)
    end

    assert_redirected_to registros_url
  end
end
