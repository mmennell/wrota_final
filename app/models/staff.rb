class Staff < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :user_id, :uniqueness => true

end
