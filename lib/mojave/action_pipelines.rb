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
      index_pipeline.each { |method| send method }
    end

    def show
      show_pipeline.each { |method| send method }
    end

    def new
      new_pipeline.each { |method| send method }
    end

    def edit
      edit_pipeline.each { |method| send method }
    end

    def create
      create_pipeline.each { |method| send method }
    end

    def update
      update_pipeline.each { |method| send method }
    end

    def destroy
      destroy_pipeline.each { |method| send method }
    end
  end
end
