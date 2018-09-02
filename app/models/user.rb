class User < ApplicationRecord
  has_one :gym
  validates :auth_id, uniqueness: true
  def self.from_token_payload payload
    # Returns a valid user, `nil` or raise
    @user = self.find_or_create_by(auth_id: payload['sub'])
  end
end
