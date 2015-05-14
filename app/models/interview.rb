class Interview < ActiveRecord::Base
  belongs_to :film
  belongs_to :person
  has_many :questionanswers
end
