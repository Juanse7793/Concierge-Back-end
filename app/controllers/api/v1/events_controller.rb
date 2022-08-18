module Api
  module V1
    class EventsController < ApplicationController
      before_action :set_event, only: %i[show update destroy]

      # GET /events
      def index
        @events = Event.includes( :images_attachments).all

        render json: @events
      end

      # GET /events/1
      def show
        render json: @event
      end

      # POST /events
      def create
        p "These are the params"
        p event_params
        @event = Event.new(event_params)

        if @event.save
          p "It got this far"
          p @event.image_urls
          render json: @event, status: :created, location: @event
        else
          render json: @event.errors, status: :unprocessable_entity
          p "Failed to add image"
        end
      end

      # PATCH/PUT /events/1
      def update
        if @event.update(event_params)
          render json: @event
        else
          render json: @event.errors, status: :unprocessable_entity
        end
      end

      # DELETE /events/1
      def destroy
        @event.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def event_params
        params.permit(:name, :price, :start_date, :end_date, :location, images: [],)
      end
    end
  end
end
