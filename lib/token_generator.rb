module TokenGenerator
  def generate_token(size = 16, &validity)
    begin
      token = generate_token_generator.hex(size / 2)
    end while !validity.call(token) if block_given?
    token
  end

  def generate_token_generator
    Thread.current[:token_generator] ||= Object.const_defined?('SecureRandom') ? SecureRandom : ActiveSupport::SecureRandom
  end

  def set_token
    self.token = generate_token { |token| !self.class.exists?(:token => token) }
  end
end
