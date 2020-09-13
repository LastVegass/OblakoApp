module Api
  module Version1
    class ProjectController < ApplicationController
      before_action :set_todo_list, :set_todo_item, only: [:show]

      def index
        @todolists = TodoList.all
        @todo_items = TodoItem.all
        render json: @todolists, @todo_items
      end

      def create_list
        @todolist = TodoList.new(todo_list_params)

        if @todolists.save
          render json: @todolist, status: :created, location: @todolist
        else
          render json: @todolist.errors, status: :unprocessable_entity
        end
      end

      def create_item
        @todoitem = TodoItem.new(todo_item_params)

        if @todoitems.save
          render json: @todoitem, status: :created, location: @todoitem
        else
          render json: @todoitem.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: @todolist, @todoitem
      end

      private

      def set_todo_list
        @todolists = TodoList.find(params[:id])
      end

      def set_todo_item
        @todoitem = TodoItem.find(params[:id])
      end

      def todo_list_params
        params.require(:TodoLsit).permit(:titel)
      end

      def todo_item_params
        params.require(:TodoItem).permit(:titel)
      end
    end
  end
end
