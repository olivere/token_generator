require 'active_model'
require 'active_support/core_ext/string/access'

class Post
  extend ActiveModel::Callbacks
  include TokenGenerator

  attr_accessor :token

  define_model_callbacks :save

  before_save :set_token

  def save
    _run_save_callbacks { false }
  end

  def self.exists?(*args)
    false
  end
end
