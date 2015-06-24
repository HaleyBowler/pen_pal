class User < ActiveRecord::Base

  acts_as_messageable


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  has_many :proficiencies
  has_many :languages, through: :proficiencies

def self.filter(query)
    query.blank? ? User.all : User.where("lower(first_name) || lower(last_name) || lower(location) LIKE '%#{query.downcase}%'")
end

  def get_languages
    languages = []
    languages << "English #{self.english}" if self.english != "Not Interested"
    languages << "Spanish #{self.spanish}" if self.spanish != "Not Interested"
    languages << "French #{self.french}" if self.french != "Not Interested"
    languages << "Italian #{self.italian}" if self.italian != "Not Interested"
    languages << "German #{self.german}" if self.german != "Not Interested"
    languages
  end

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
