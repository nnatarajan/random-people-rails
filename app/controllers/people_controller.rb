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
    @person = Person.new(person_params)
    if @person.save
      # new record in database created
      redirect_to person_path(@person)
    else
      # user needs to fix errors on form 
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      # if successful, redirect to show
      redirect to person_path(@person)
    else
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:id]) 
    @person.destroy
    redirect_to people_path
  end

  # Strong params
  private 
    def person_params
      params.require(:person).permit(:name, :age, :race, :hair_color, :alive)
    end

end
