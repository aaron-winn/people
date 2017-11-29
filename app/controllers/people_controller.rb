class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @people = Person.new
  end

  def create
      #if people_params['alive'] == "true" 
       # people_params['alive'] = true
     # else 
      #  people_params['alive'] = false
      #end  
      #puts 'iam a string************%%%%%%%%%%%%%%%%%$$$$$$'
      #print people_params
      @people = Person.new(people_params)
  
      if @people.save
        redirect_to people_path
      else
        render :new
      end
  end
   
    
  

  def show
    @person = Person.find(params[:id])

  end

  def edit

  end

  def update

  end

  def destroy

  end
  private
  
    def people_params
       params.require(:person).permit(:name, :age, :eye_color, :gender, :hair_color, :alive)
    end
   
end
