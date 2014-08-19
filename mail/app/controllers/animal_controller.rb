class AnimalController < ApplicationController

def index
@animal = Animal.all
end

def show
@animal = Animal.find(params[:id])
end

def new
	@animal = Animal.new
end

def create
	 @animal = Animal.new(params[:animal].permit('name','photo','age'))
	if @animal.save
		redirect_to animal_path(@animal), :notice => "your post was saved"
	else
		render "new"
	end
end

def show
	@animal = Animal.find(params[:id])
end
end