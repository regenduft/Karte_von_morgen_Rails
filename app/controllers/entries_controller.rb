class EntriesController < ApplicationController

  before_filter :login_required, :only=>['create', 'update', 'destroy', 'new', 'edit']

# GET
  def search
	queries = params['query'].split(' ');
	entries = Entry.joins(:categories)
	queries.each {|query| 
                q = '%' + query + '%'
		entries = entries.where("entries.name like ? or city like ? or categories.name like ?", q, q, q)
        }

	render json: entries
  end

# GET
  def index
        render json: Entry.all 
  end

# POST
  def create
	entry = Entry.create(entry_params)
	update_categories(entry)
	render json: entry
  end

# PUT /$id
  def update
	entry = Entry.update(params[:id], entry_params)
	update_categories(entry)
	render json: entry
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
  def entry_params
	params.require(:entry).permit(:name, :description, :position, :city, :zip, :street, :phone, :email, :url, :openingHours)
  end

  def update_categories(entry)
        if params['categories'] != nil then
		entry.categories = []
                params['categories'].each{ |category|
                        entry.categories.push(Category.find(category['id']))
                }
        end
        entry.save
  end

end
