class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :restaurant_name, :uniqueness => { :scope => [:address] }

end
