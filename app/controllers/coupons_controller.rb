class CouponsController < ApplicationController

  before_action :set_coupon, only: [:show]
  def index
    @coupons = Coupon.all
  end

  def new
    @coupon = Coupon.new
  end

  def show
  end


  def create
    coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(coupon)
  end


  def set_coupon
    @coupon = Coupon.find(params[:id])
  end

  private
  def coupon_params
    params.require(:coupon).permit(:store, :coupon_code)
  end
end
