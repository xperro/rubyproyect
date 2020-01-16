require "application_system_test_case"

class RegistrosTest < ApplicationSystemTestCase
  setup do
    @registro = registros(:one)
  end

  test "visiting the index" do
    visit registros_url
    assert_selector "h1", text: "Registros"
  end

  test "creating a Registro" do
    visit registros_url
    click_on "New Registro"

    fill_in "Adicional", with: @registro.adicional
    fill_in "Comentarios", with: @registro.comentarios
    fill_in "Dias de retraso", with: @registro.dias_de_retraso
    fill_in "Direccion", with: @registro.direccion
    fill_in "Estado", with: @registro.estado
    fill_in "Fecha salida", with: @registro.fecha_salida
    fill_in "Guia", with: @registro.guia
    fill_in "Ind inter", with: @registro.ind_inter
    fill_in "Informacion adicional", with: @registro.informacion_adicional
    fill_in "Intentos de entrega", with: @registro.intentos_de_entrega
    fill_in "Nombre", with: @registro.nombre
    fill_in "Promesa de entrega", with: @registro.promesa_de_entrega
    fill_in "Ref", with: @registro.ref
    click_on "Create Registro"

    assert_text "Registro was successfully created"
    click_on "Back"
  end

  test "updating a Registro" do
    visit registros_url
    click_on "Edit", match: :first

    fill_in "Adicional", with: @registro.adicional
    fill_in "Comentarios", with: @registro.comentarios
    fill_in "Dias de retraso", with: @registro.dias_de_retraso
    fill_in "Direccion", with: @registro.direccion
    fill_in "Estado", with: @registro.estado
    fill_in "Fecha salida", with: @registro.fecha_salida
    fill_in "Guia", with: @registro.guia
    fill_in "Ind inter", with: @registro.ind_inter
    fill_in "Informacion adicional", with: @registro.informacion_adicional
    fill_in "Intentos de entrega", with: @registro.intentos_de_entrega
    fill_in "Nombre", with: @registro.nombre
    fill_in "Promesa de entrega", with: @registro.promesa_de_entrega
    fill_in "Ref", with: @registro.ref
    click_on "Update Registro"

    assert_text "Registro was successfully updated"
    click_on "Back"
  end

  test "destroying a Registro" do
    visit registros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registro was successfully destroyed"
  end
end
