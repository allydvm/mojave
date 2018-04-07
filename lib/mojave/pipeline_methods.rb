# frozen_string_literal: true

module Mojave
  module PipelineMethods
    def resource_class
      controller_name.classify.constantize
    end
  end
end
