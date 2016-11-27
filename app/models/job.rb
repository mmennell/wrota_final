class Job < ApplicationRecord
  # Direct associations

  belongs_to :role

  belongs_to :staff

  # Indirect associations

  # Validations

end
