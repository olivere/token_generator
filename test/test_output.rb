# encoding: utf-8

require 'token_generator'
require File.expand_path(File.dirname(__FILE__) + '/models')
require 'test/unit'

class TestOutput < Test::Unit::TestCase

  def test_generator_methods
    p = Post.new
    assert p.respond_to?(:generate_token)
    assert p.respond_to?(:set_token)
  end

  def test_callback
    p = Post.new
    assert p.token.nil?
    p.save
    assert !p.token.nil?
    assert_equal 16, p.token.size
  end

end
