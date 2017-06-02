require 'test_helper'

class ResalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resale = resales(:one)
  end

  test "should get index" do
    get resales_url
    assert_response :success
  end

  test "should get new" do
    get new_resale_url
    assert_response :success
  end

  test "should create resale" do
    assert_difference('Resale.count') do
      post resales_url, params: { resale: { address: @resale.address, cep: @resale.cep, cnpj: @resale.cnpj, company_name: @resale.company_name, email: @resale.email, name: @resale.name, neighborhood: @resale.neighborhood, phone: @resale.phone, province: @resale.province, territory: @resale.territory } }
    end

    assert_redirected_to resale_url(Resale.last)
  end

  test "should show resale" do
    get resale_url(@resale)
    assert_response :success
  end

  test "should get edit" do
    get edit_resale_url(@resale)
    assert_response :success
  end

  test "should update resale" do
    patch resale_url(@resale), params: { resale: { address: @resale.address, cep: @resale.cep, cnpj: @resale.cnpj, company_name: @resale.company_name, email: @resale.email, name: @resale.name, neighborhood: @resale.neighborhood, phone: @resale.phone, province: @resale.province, territory: @resale.territory } }
    assert_redirected_to resale_url(@resale)
  end

  test "should destroy resale" do
    assert_difference('Resale.count', -1) do
      delete resale_url(@resale)
    end

    assert_redirected_to resales_url
  end
end
