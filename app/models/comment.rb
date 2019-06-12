class Comment < ApplicationRecord
  # Direct associations

  belongs_to :commenter,
             :class_name => "Expert"

  belongs_to :portfolio

  # Indirect associations

  # Validations

end
