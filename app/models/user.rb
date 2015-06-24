class User < ActiveRecord::Base

  acts_as_messageable


  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://unlike.net/assets/missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  
  has_many :proficiencies
  has_many :languages, through: :proficiencies

def self.filter(query)
    query.blank? ? User.all : User.where("lower(first_name) || lower(last_name) || lower(location) LIKE '%#{query.downcase}%'")
end

  def get_languages
    languages = []
    languages << "English level #{self.english}" if self.english > 0
    languages << "Spanish level #{self.spanish}" if self.spanish > 0
    languages << "French level #{self.french}" if self.french > 0
    languages << "Italian level #{self.italian}" if self.italian > 0
    languages << "German level #{self.german}" if self.german > 0
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
