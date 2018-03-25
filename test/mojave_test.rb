# frozen_string_literal: true

require 'test_helper'

describe Mojave do
  it 'must have a version number' do
    ::Mojave::VERSION.wont_be_nil
  end
end
