class Contact < ActiveRecord::Base
  validate :notMoreThanFourIPs
  def notMoreThanFourIPs
    if Contact.where(ip_address: ip_address).count >= 4
      errors.add(:ip_address, "can't be more than 4 records for same IPs")
    end
  end
end
