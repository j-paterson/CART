module Tokenizable extend ActiveSupport::Concern
  included do
    after_initialize :assign_token, if: :new_record?

    def self.prefix
      name.to_s.parameterize.first(3)
    end

    def self.generate_token
      "#{prefix}_#{SecureRandom.urlsafe_base64}_#{(Time.now.to_f * 1000).to_i}"
    end
  end

  def assign_token
    self.token = self.class.generate_token
  end
end
