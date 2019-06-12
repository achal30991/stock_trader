class Stock < ApplicationRecord
  # Direct associations

  belongs_to :portfolio,
             :required => false

  # Indirect associations

  # Validations

end
