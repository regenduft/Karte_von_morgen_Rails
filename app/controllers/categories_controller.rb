class CategoriesController < ApplicationController

  before_filter :login_required, :only=>['create', 'update', 'destroy', 'new', 'edit']


# GET
  def search
	render json: Category.where("name like ?", params['query'])
  end

# GET
  def index
	result = {}
	Category.all.each{ |category| result[category.id] = {name: category.name, parent_id: category.parent_id} }
	render json: result
  end

# POST
  def create
	render json: Category.create(category_params)
  end

# PUT /$id
  def update
	render json: Category.update(params[:id], category_params)
  end

# GET /$id
  def show
	render nothing: true, status: :bad_request
  end

# DELETE /$id
  def destroy
	render nothing: true, status: :bad_request
  end

# GET /$id/new
  def new
	render nothing: true, status: :bad_request
  end

# GET /$id/edit
  def edit 
	render nothing: true, status: :bad_request
  end

private
  # Never trust parameters from the scary internet, only allow the white list through.
  def category_params
	params.require(:category).permit(:name, :parent_id)
  end

end
