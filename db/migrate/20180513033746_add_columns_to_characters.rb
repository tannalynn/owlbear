class AddColumnsToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :character_class, :string
    add_column :characters, :race, :string
    add_column :characters, :background, :string
    add_column :characters, :alignment, :string
    add_column :characters, :player_name, :string
    add_column :characters, :xp, :integer
    
    add_column :characters, :str, :integer
    add_column :characters, :dex, :integer
    add_column :characters, :con, :integer
    add_column :characters, :intel, :integer
    add_column :characters, :wis, :integer
    add_column :characters, :cha, :integer
    
    add_column :characters, :inspiration, :integer
    add_column :characters, :proficiency_bonus, :integer
    add_column :characters, :ac, :integer
    
    add_column :characters, :initiative, :integer
    add_column :characters, :speed, :integer
    add_column :characters, :hp, :integer
    
    add_column :characters, :hitdice_total, :integer
    
    add_column :characters, :sklmod_acrobatics, :integer
    add_column :characters, :sklmod_animalhandling, :integer
    add_column :characters, :sklmod_arcana, :integer
    add_column :characters, :sklmod_athletics, :integer
    add_column :characters, :sklmod_deception, :integer
    add_column :characters, :sklmod_history, :integer
    add_column :characters, :sklmod_insight, :integer
    add_column :characters, :sklmod_intimidation, :integer
    add_column :characters, :sklmod_investigation, :integer
    add_column :characters, :sklmod_medicine, :integer
    add_column :characters, :sklmod_nature, :integer
    add_column :characters, :sklmod_perception, :integer
    add_column :characters, :sklmod_performance, :integer
    add_column :characters, :sklmod_persuation, :integer
    add_column :characters, :sklmod_religion, :integer
    add_column :characters, :sklmod_sleightofhand, :integer
    add_column :characters, :sklmod_stealth, :integer
    add_column :characters, :sklmod_survival, :integer
    
    add_column :characters, :weapons_attacks, :text  
    add_column :characters, :equipment, :text
    add_column :characters, :feats_notes, :text
    add_column :characters, :proficiencies_languages, :text 
    
    add_column :characters, :personality_traits, :text
    add_column :characters, :ideals, :text
    add_column :characters, :bonds, :text
    add_column :characters, :flaws, :text
    
  end
end
