class Api::V1::BinsController < ApplicationController
  before_filter :check_header

  def index
    @bins = Bin.all
    respond_to do |format|
      format.json { render :json => @bins }
    end
  end

  # Returns all bins given a specific location
  def by_location
    latitude = params[:latitude]
    longitude = params[:longitude]
    range = params[:range]  #Range in KM is specified below
    @bins = Bin.near([latitude, longitude], range, :units => :km)
    respond_to do |format|
      format.json { render :json => @bins }
    end
  end

  def in_bounding_box
    lat_sw = params[:lat_sw]
    lon_sw = params[:lon_sw]
    lat_ne = params[:lat_ne]
    lon_ne = params[:lon_ne]
    bbox = [lat_sw, lon_sw, lat_ne, lon_ne]
    @bins = Bin.within_bounding_box(bbox)
    respond_to do |format|
      format.json { render :json => @bins }
    end

  end

  private

  def check_header
    if request.headers['DoveSiButta-Secret'].present?
      if request.headers['DoveSiButta-Secret'] == ENV['APP_SECRET']
        can_continue = true
      else
        can_continue = false
      end
    else
      can_continue = false
    end
    if !can_continue
      respond_to do |format|
        format.json { render :json => {error: 'NO API KEY SPECIFIED OR API KEY NOT VALID'} }
      end
    end
  end

end