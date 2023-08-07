class LibrariesController < ApplicationController
  def index
    libraries = Library.all
    render json: LibrarySerializer.new(libraries).serializable_hash[:data].map{|x| x[:attributes]}
  end
end
