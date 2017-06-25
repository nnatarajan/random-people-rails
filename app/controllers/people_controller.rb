class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    binding.pry
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    binding.pry
  end

  def destroy
    @person = Person.find(params[:id]) 
    @person.destroy
  end
end
