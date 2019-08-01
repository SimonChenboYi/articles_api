# frozen_string_literal: true

module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.order('created_at ASC')
        render json: {status: 'SUCCESS', message:'Loaded articles', data: articles}, status: :ok
      end

      def show
        article = Article.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded article', data: article}, status: :ok
      end
    end
  end
end
