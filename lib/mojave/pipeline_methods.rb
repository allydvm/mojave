# frozen_string_literal: true

module Mojave
  # PipelineMethods
  module PipelineMethods
    def resource_class
      controller_name.classify.constantize
    end

    def resource_instance_name
      controller_name.singularize
    end

    def resource_collection_name
      controller_name.pluralize
    end
  end
end
