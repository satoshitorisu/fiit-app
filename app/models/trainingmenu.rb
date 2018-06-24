class Trainingmenu < ApplicationRecord
    # has_many :task
    has_many :trainingactuals
    accepts_nested_attributes_for :trainingactuals, allow_destroy: true

    has_many :trainingitems, :through => :trainingactual
    belongs_to :user


end
