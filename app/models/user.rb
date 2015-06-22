class User < ActiveRecord::Base

  acts_as_messageable
  has_many :proficiencies
  has_many :languages, through: :proficiencies


  #has_many :spoken_languages, :class_name => 'languages' through :teacher
  #has_many :desired_languages, :class_name => 'languages' thorugh :learner

def mailboxer_email(object)
  #Check if an email should be sent for that object
  #if true
  return "define_email@on_your.model"
  #if false
  #return nil
end
  	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
