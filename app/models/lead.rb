class Lead < ApplicationRecord
  validates :name, :phone, :string, :company, :email, :origin, presence: true
end
