class Character < ActiveRecord::Base
  belongs_to :user
  
  validates :name, 
    presence: true,
    length: {maximum: 60}
  
  validates :character_class,
    presence: true,
    length: {maximum: 20}
  
  validates :race,
    presence: true,
    length: {maximum: 20 }
  
  validates :level, numericality: {
    only_integer: true,
    greater_than: 0 }
  
  validates :background,
    length: {maximum: 30}
  
  validates :alignment,
    length: {maximum: 20}
  
  validates :player_name,
    length: {maximum: 30}
  
  validates :xp, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0 }
  
  
  validates :str, numericality: {
    only_integer: true,
    greater_than: 0 }
  
  validates :dex, numericality: {
    only_integer: true,
    greater_than: 0 }
  
  validates :con, numericality: {
    only_integer: true,
    greater_than: 0 }
  
  validates :intel, numericality: {
    only_integer: true,
    greater_than: 0 }  

  validates :wis, numericality: {
    only_integer: true,
    greater_than: 0 }

  validates :cha, numericality: {
    only_integer: true,
    greater_than: 0 }  
  
  
  validates :inspiration, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0 }  
  
  validates :proficiency_bonus, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0 } 
  
  
  validates :sklmod_acrobatics, numericality: {
    only_integer: true }  
    
  validates :sklmod_animalhandling, numericality: {
    only_integer: true }  

  validates :sklmod_arcana, numericality: {
    only_integer: true }  

  validates :sklmod_athletics, numericality: {
    only_integer: true }  

  validates :sklmod_deception, numericality: {
    only_integer: true }  

  validates :sklmod_history, numericality: {
    only_integer: true }  

  validates :sklmod_insight, numericality: {
    only_integer: true }  

  validates :sklmod_intimidation, numericality: {
    only_integer: true }  

  validates :sklmod_investigation, numericality: {
    only_integer: true }  

  validates :sklmod_medicine, numericality: {
    only_integer: true }  

  validates :sklmod_nature, numericality: {
    only_integer: true }  

  validates :sklmod_perception, numericality: {
    only_integer: true }  

  validates :sklmod_performance, numericality: {
    only_integer: true }  

  validates :sklmod_persuation, numericality: {
    only_integer: true }  

  validates :sklmod_religion, numericality: {
    only_integer: true }  

  validates :sklmod_sleightofhand, numericality: {
    only_integer: true }  

  validates :sklmod_stealth, numericality: {
    only_integer: true }  

  validates :sklmod_survival, numericality: {
    only_integer: true }  


  validates :ac, numericality: {
    only_integer: true,
    greater_than: 0 }

  validates :initiative, numericality: {
    only_integer: true }
    
  validates :speed, numericality: {
    only_integer: true,
    greater_than: 0 }, allow_nil: true

  validates :hp, numericality: {
    only_integer: true,
    greater_than: 0 }

  validates :hitdice_total, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0 }

  
  
end
