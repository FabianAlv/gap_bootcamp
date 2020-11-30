class Reservation < ApplicationRecord
  belongs_to :property
  belongs_to :host
end
