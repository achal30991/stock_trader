class Upvote < ApplicationRecord
  # Direct associations

  belongs_to :expert

  belongs_to :stock

  # Indirect associations

  # Validations

end
