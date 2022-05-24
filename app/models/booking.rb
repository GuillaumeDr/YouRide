class Booking < ApplicationRecord
  # belongs_to :current_ski
  # belongs_to :user, through: :ski
  after_initialize :init

  # validates :start_date, :end_date, presence: true

  def init
    self.status  ||= "pending"           #will set the default value only if it's nil
  end
end
