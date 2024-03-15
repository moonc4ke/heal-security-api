class RestaurantsController < ApplicationController
  require 'csv'

  # GET /restaurants
  def index
    render json: load_restaurants
  end

  # GET /restaurants/:id
  def show
    restaurants = load_restaurants
    id = params[:id].to_i
    restaurant = restaurants[id - 1]
    if restaurant
      render json: restaurant
    else
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  end

  private

  def load_restaurants
    file_path = Rails.root.join('public', 'restaurant-data.csv')
    if File.exist?(file_path)
      csv_data = CSV.read(file_path, headers: false)
      csv_data.map.with_index(1) do |row, index|
        {
          id: index,
          name: row[0],
          type: row[1],
          description: row[2],
          review: row[3],
          reviewer_name: row[4],
          rating: row[5],
          image: "/images/#{row[6]}"
        }
      end
    else
      []
    end
  end
end
