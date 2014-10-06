class Client < ActiveRecord::Base
  validates :short_description, presence: true
  after_initialize :init

  def init
    self.active = false if self.active.nil?
  end
end
