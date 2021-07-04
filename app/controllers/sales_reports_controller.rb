class SalesReportsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_sales_report, only: [:show, :edit, :update, :destroy]

  # GET /sales_reports
  # GET /sales_reports.json
  def index
    @sales_reports = SalesReport.where(festival_id: [nil, 5, 3 ])
  end

  # GET /sales_reports/1
  # GET /sales_reports/1.json
  def show
  end

  # GET /sales_reports/new
  def new
    @sales_report = SalesReport.new
    @sales_report.festival_id = 5
  end

  # GET /sales_reports/1/edit
  def edit
  end

  # POST /sales_reports
  # POST /sales_reports.json
  def create
    @sales_report = SalesReport.new(sales_report_params)

    respond_to do |format|
      if @sales_report.save
        format.html { redirect_to @sales_report, notice: 'Sales report was successfully created.' }
        format.json { render :show, status: :created, location: @sales_report }
      else
        format.html { render :new }
        format.json { render json: @sales_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_reports/1
  # PATCH/PUT /sales_reports/1.json
  def update
    respond_to do |format|
      if @sales_report.update(sales_report_params)
        format.html { redirect_to @sales_report, notice: 'Sales report was successfully updated.' }
        format.json { render :show, status: :ok, location: @sales_report }
      else
        format.html { render :edit }
        format.json { render json: @sales_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_reports/1
  # DELETE /sales_reports/1.json
  def destroy
    @sales_report.destroy
    respond_to do |format|
      format.html { redirect_to sales_reports_url, notice: 'Sales report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_report
      @sales_report = SalesReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_report_params
      params.require(:sales_report).permit(:date, :vendor_id, :concert, :ticket_category_id, :description, :payment_method_id, :count,
        :unit_price, :final, :quick_books, :festival_id, :event_id)
    end
end
