require 'test_helper'

class ProductsPurposesRelationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products_purposes_relation = products_purposes_relations(:one)
  end

  test "should get index" do
    get products_purposes_relations_url
    assert_response :success
  end

  test "should get new" do
    get new_products_purposes_relation_url
    assert_response :success
  end

  test "should create products_purposes_relation" do
    assert_difference('ProductsPurposesRelation.count') do
      post products_purposes_relations_url, params: { products_purposes_relation: {  } }
    end

    assert_redirected_to products_purposes_relation_url(ProductsPurposesRelation.last)
  end

  test "should show products_purposes_relation" do
    get products_purposes_relation_url(@products_purposes_relation)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_purposes_relation_url(@products_purposes_relation)
    assert_response :success
  end

  test "should update products_purposes_relation" do
    patch products_purposes_relation_url(@products_purposes_relation), params: { products_purposes_relation: {  } }
    assert_redirected_to products_purposes_relation_url(@products_purposes_relation)
  end

  test "should destroy products_purposes_relation" do
    assert_difference('ProductsPurposesRelation.count', -1) do
      delete products_purposes_relation_url(@products_purposes_relation)
    end

    assert_redirected_to products_purposes_relations_url
  end
end
