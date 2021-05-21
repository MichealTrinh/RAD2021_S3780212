class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def help
  end

  def menu
  end

  def search
  end

  def filter
    session['back'] = request.headers["HTTP_REFERER"]
  end

  def save_collections
    session['filterCollections'] = []
    params[:collections].each do |p|
      if p[1].to_i == 1
        session['filterCollections'] << p[0]
      end
    end
    redirect_to session['back']
  end

  def save_colors
    session['filterColors'] = []
    if params[:colors][:white]
      session['filterColors'] << "white"
    end
    if params[:colors][:gray]
      session['filterColors'] << "gray"
    end
    if params[:colors][:red]
      session['filterColors'] << "red"
    end
    if params[:colors][:purple]
      session['filterColors'] << "purple"
    end
    if params[:colors][:blue]
      session['filterColors'] << "blue"
    end
    if params[:colors][:green]
      session['filterColors'] << "green"
    end
    if params[:colors][:brown]
      session['filterColors'] << "brown"
    end
    if params[:colors][:black]
      session['filterColors'] << "black"
    end
    redirect_to session['back']
  end

  def save_size
    session['filterSizes'] = [params[:sizes][:size]]
    puts session['back'].to_s + " - ------------------"
    redirect_to session['back']
  end
end
