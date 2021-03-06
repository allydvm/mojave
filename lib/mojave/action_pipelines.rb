# frozen_string_literal: true

require 'mojave/pipeline_methods'

# Mojave
module Mojave
  # ActionPipelines
  module ActionPipelines
    include Mojave::PipelineMethods

    protected

    def index_pipeline
      %i[set_class load_parent set_resource_collection]
    end

    def show_pipeline
      %i[set_class loat_parent set_resource_instance]
    end

    def new_pipeline
      %i[set_class load_parent initialize_resource]
    end

    def edit_pipeline
      %i[set_class load_parent set_resource_instance]
    end

    def create_pipeline
      %i[set_class load_parent initialize_resource]
    end

    def update_pipeline
      %i[set_class load_parent set_resource_instance]
    end

    def destroy_pipeline
      %i[set_class load_parent set_resource_instance]
    end

    public

    def index
      execute_pipeline(index_pipeline)
    end

    def show
      execute_pipeline(show_pipeline)
    end

    def new
      execute_pipeline(new_pipeline)
    end

    def edit
      execute_pipeline(edit_pipeline)
    end

    def create
      execute_pipeline(create_pipeline)
    end

    def update
      execute_pipeline(update_pipeline)
    end

    def destroy
      execute_pipeline(destroy_pipeline)
    end
  end

  private

  def execute_pipeline(pipeline)
    pipeline.each_with_object({}) { |method, pipe| send method, pipe }
  end
end
