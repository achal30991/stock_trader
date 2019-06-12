class Expert < ApplicationRecord
  # Direct associations

  has_many   :upvotes,
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "commenter_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
