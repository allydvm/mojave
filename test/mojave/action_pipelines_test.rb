# frozen_string_literal: true

require 'test_helper'
require 'mojave/action_pipelines'

module Mojave
  describe ActionPipelines do
    before do
      class ChollaController < ::ActionController::Base
        include Mojave::ActionPipelines
      end

      @controller = ChollaController.new
    end
  end
end
