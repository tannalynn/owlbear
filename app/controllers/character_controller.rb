class CharacterController < ApplicationController
  
  def new
    @character = Character.new
  end
  
  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id
    if @character.save
      flash[:success] = "Character created!"
      redirect_to '/about'
    else
      render 'new'
    end
  end
  
  def update 
    @character = Character.find(params[:id])
    puts @character.name  
    if @character.update_attributes(character_params)
      flash[:success] = "Character Information Updated"
      redirect_to @character
    else
      render 'edit'
    end
  end
  
  def edit
    @character = Character.find(params[:id])
  end
  
  def show
    @character = Character.find(params[:id])
  end
  
  def delete
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to User.find_by(id: current_user.id)
  end
  
  
  
  
  
  
  
  
    private 
    def character_params
      params.require(:character).permit(:name, :level, :character_class, :race,
        :background, :alignment, :player_name, :xp, :str, :dex, :con, :intel,
        :wis, :cha, :inspiration, :proficiency_bonus, :sklmod_acrobatics, 
        :sklmod_animalhandling, :sklmod_arcana, :sklmod_athletics, :sklmod_deception,
        :sklmod_history, :sklmod_insight, :sklmod_intimidation, :sklmod_investigation, 
        :sklmod_medicine, :sklmod_nature, :sklmod_perception, :sklmod_performance, 
        :sklmod_persuation, :sklmod_religion, :sklmod_sleightofhand, :sklmod_stealth, 
        :sklmod_survival, :proficiencies_languages, :ac, :initiative, :speed,
        :hp, :hitdice_total, :weapons_attacks, :equipment, :feats_notes, 
        :personality_traits, :ideals, :bonds, :flaws
      )
    end
    
  
end
