# frozen_string_literal: true

module Mojave
  module ActionPipelines
    include Mojava::PipelineMethods

    protected

    def index_pipeline
      []
    end

    def show_pipeline
      []
    end

    def new_pipeline
      []
    end

    def edit_pipeline
      []
    end

    def create_pipeline
      []
    end

    def update_pipeline
      []
    end

    def destroy_pipeline
      []
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
