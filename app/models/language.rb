class Language < ActiveRecord::Base
	has_many :teachers
	has_many :learners
	has_many :users, through: :learners, :teachers
end
