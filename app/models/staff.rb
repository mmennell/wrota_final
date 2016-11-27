class Staff < ApplicationRecord
  # Direct associations

  belongs_to :role

  has_many   :jobs,
             :dependent => :nullify

  belongs_to :home_restaurant,
             :class_name => "Restaurant"

  belongs_to :user

  # Indirect associations

  # Validations

  validates :user_id, :uniqueness => true

end
