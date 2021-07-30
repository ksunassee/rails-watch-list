class ListsController < ApplicationController
before_action :set_list, only: [:update, :show, :edit, :destroy]

	def index
		@lists = List.all
	end

	def new
		@list = List.new
	end

	def show
	end

	def create
		@list = List.new(list_params)
		if @list.save
			redirect_to list_path(@list)
		else
			render :new
		end
	end

	# def update
	# 	@list.update(list_params)
	# 	redirect_to list_path(@list)
	# end

	# def edit
	# end

	def destroy
		@list.destory
	end


private

def list_params
	params.require(:list).permit(:name)
end

def set_list
	@list = List.find(params[:id])
end
end
