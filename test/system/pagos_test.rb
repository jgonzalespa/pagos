require "application_system_test_case"

class PagosTest < ApplicationSystemTestCase
  setup do
    @pago = pagos(:one)
  end

  test "visiting the index" do
    visit pagos_url
    assert_selector "h1", text: "Pagos"
  end

  test "should create pago" do
    visit pagos_url
    click_on "New pago"

    fill_in "Anio", with: @pago.anio
    fill_in "Fechapago", with: @pago.fechapago
    fill_in "Mes", with: @pago.mes
    fill_in "Monto", with: @pago.monto
    click_on "Create Pago"

    assert_text "Pago was successfully created"
    click_on "Back"
  end

  test "should update Pago" do
    visit pago_url(@pago)
    click_on "Edit this pago", match: :first

    fill_in "Anio", with: @pago.anio
    fill_in "Fechapago", with: @pago.fechapago
    fill_in "Mes", with: @pago.mes
    fill_in "Monto", with: @pago.monto
    click_on "Update Pago"

    assert_text "Pago was successfully updated"
    click_on "Back"
  end

  test "should destroy Pago" do
    visit pago_url(@pago)
    click_on "Destroy this pago", match: :first

    assert_text "Pago was successfully destroyed"
  end
end
