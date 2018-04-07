# frozen_string_literal: true

require 'test_helper'
require 'mojave/pipeline_methods'

class KelsoDune; end

module Mojave
 describe PipelineMethods do
    before do
      class KelsoDunesController < ::ActionController::Base
        include Mojave::PipelineMethods
      end

      @controller = KelsoDunesController.new
    end

    it 'must return the class for a controller' do
      @controller.resource_class.must_equal KelsoDune
    end
  end
end
