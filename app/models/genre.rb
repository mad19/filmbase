class Genre < ActiveRecord::Base
  has_many :films, -> { ordering.includes(:genre) }, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  scope :ordering, -> { order(:name) }

  before_destroy :can_destroy?


  def self.manage?(u)
    u.try(:admin?)
  end

  def can_destroy?
    films.blank?
  end

end
