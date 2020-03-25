class Admin::VendorsController < Admin::BaseController
  before_action :find_vendor, only: [:edit, :update, :destroy]

  def index
    @vendors = Vendor.all
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to admin_vendors_path, notice: '廠商新增成功！'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @vendor.update(vendor_params)
      redirect_to admin_vendors_path(@vendor), notice: '資料更新成功！'
    else
      render :edit
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:title, :description, :online)
  end

  def find_vendor
    @vendor = Vendor.find(params[:id])
  end
end