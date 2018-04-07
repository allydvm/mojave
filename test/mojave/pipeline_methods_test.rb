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

    describe '#resource_class' do
      it 'must return the class for a controller' do
        @controller.resource_class.must_equal KelsoDune
      end
    end

    describe '#resource_instance_name' do
      it 'must return a singular string name for the class' do
        @controller.resource_instance_name.must_equal 'kelso_dune'
      end
    end

    describe '#resource_collection_name' do
      it 'must return a plural string name for the class' do
        @controller.resource_collection_name.must_equal 'kelso_dunes'
      end
    end
  end
end
