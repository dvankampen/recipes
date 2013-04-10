require 'test_helper'

class NewRecipesControllerTest < ActionController::TestCase
  setup do
    @new_recipe = new_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_recipe" do
    assert_difference('NewRecipe.count') do
      post :create, :new_recipe => { :ingredients => @new_recipe.ingredients, :name => @new_recipe.name }
    end

    assert_redirected_to new_recipe_path(assigns(:new_recipe))
  end

  test "should show new_recipe" do
    get :show, :id => @new_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @new_recipe
    assert_response :success
  end

  test "should update new_recipe" do
    put :update, :id => @new_recipe, :new_recipe => { :ingredients => @new_recipe.ingredients, :name => @new_recipe.name }
    assert_redirected_to new_recipe_path(assigns(:new_recipe))
  end

  test "should destroy new_recipe" do
    assert_difference('NewRecipe.count', -1) do
      delete :destroy, :id => @new_recipe
    end

    assert_redirected_to new_recipes_path
  end
end
