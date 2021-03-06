class LandmarksController < ApplicationController


    get '/landmarks' do
      @landmarks = Landmark.all
      erb :'landmarks/index'
    end

    get '/landmarks/new' do
      @landmarks = Landmark.all
      erb :'/landmarks/new'
    end

    get '/landmarks/:id' do
      @landmark = Landmark.find(params[:id])
      erb :'landmarks/show'
    end

    post '/landmarks' do
      # binding.pry
      @landmark = Landmark.create(params[:landmark])
      redirect "landmarks/#{@landmark.id}"
    end

    get '/landmarks/:id/edit' do
      @landmark = Landmark.find(params[:id])
      erb :'/landmarks/edit'
    end

    put '/landmarks/:id' do
      @landmark = Landmark.find(params[:id])
      @landmark.update(params[:landmark])

      redirect "landmarks/#{@landmark.id}"
    end

  end
