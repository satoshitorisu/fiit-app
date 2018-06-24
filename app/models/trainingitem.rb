class Trainingitem < ApplicationRecord
    # has_many :trainingactual, dependent: :destroy
    # has_many :trainingmenus, :through => :trainingactual

    belongs_to :trainer

end
