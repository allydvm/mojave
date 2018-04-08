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

    def set_class(pipe)
      pipe[:class] = resource_class
    end

    def load_parent(pipe)
      pipe
    end

    def set_resource_collection(pipe)
      pipe[resource_collection_name] = resouce_class.all
    end

    def set_resource_instance(pipe)
      pipe[resource_instance_name] = resource_class.find(params[:id])
    end

    def initialize_resource(pipe)
      pipe[resource_instance_name] = resource_class.new
    end
  end
end
