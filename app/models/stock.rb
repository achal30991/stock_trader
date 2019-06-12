class Stock < ApplicationRecord
  # Direct associations

  has_many   :upvotes,
             :dependent => :destroy

  belongs_to :portfolio,
             :required => false

  # Indirect associations

  # Validations

end
