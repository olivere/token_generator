module TokenGenerator
  def generate_token(size = 16, &validity)
    begin
      token = ActiveSupport::SecureRandom.hex(size / 2)
    end while !validity.call(token) if block_given?
    token
  end

  def set_token
    self.token = generate_token { |token| !self.class.exists?(:token => token) }
  end
end
