require "byebug"
class CouponsController < ApplicationController

  def index
    @coupon = Coupon.all
  end

  def create
    @nc = Coupon.new
    @nc.coupon_code = params[:coupon][:coupon_code]
    @nc.store = params[:coupon][:store]
    @nc.save
    redirect_to coupon_path(@nc)
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
    # byebug
  end

end
