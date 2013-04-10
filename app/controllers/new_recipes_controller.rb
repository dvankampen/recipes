class NewRecipesController < ApplicationController
  # GET /new_recipes
  # GET /new_recipes.json
  def index
    @new_recipes = NewRecipe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @new_recipes }
    end
  end

  # GET /new_recipes/1
  # GET /new_recipes/1.json
  def show
    @new_recipe = NewRecipe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @new_recipe }
    end
  end

  # GET /new_recipes/new
  # GET /new_recipes/new.json
  def new
    @new_recipe = NewRecipe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @new_recipe }
    end
  end

  # GET /new_recipes/1/edit
  def edit
    @new_recipe = NewRecipe.find(params[:id])
  end

  # POST /new_recipes
  # POST /new_recipes.json
  def create
    @new_recipe = NewRecipe.new(params[:new_recipe])

    respond_to do |format|
      if @new_recipe.save
        format.html { redirect_to @new_recipe, :notice => 'New recipe was successfully created.' }
        format.json { render :json => @new_recipe, :status => :created, :location => @new_recipe }
      else
        format.html { render :action => "new" }
        format.json { render :json => @new_recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /new_recipes/1
  # PUT /new_recipes/1.json
  def update
    @new_recipe = NewRecipe.find(params[:id])

    respond_to do |format|
      if @new_recipe.update_attributes(params[:new_recipe])
        format.html { redirect_to @new_recipe, :notice => 'New recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @new_recipe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /new_recipes/1
  # DELETE /new_recipes/1.json
  def destroy
    @new_recipe = NewRecipe.find(params[:id])
    @new_recipe.destroy

    respond_to do |format|
      format.html { redirect_to new_recipes_url }
      format.json { head :no_content }
    end
  end
end
