class Portfolio < ApplicationRecord
  # Direct associations

  has_many   :stocks,
             :dependent => :nullify

  belongs_to :user

  # Indirect associations

  # Validations

end
