class ReportsController < ApplicationController
  def index
  end

  def show_report

    if (params[:datefrom].blank? || params[:dateto].blank?)
      redirect_to :back, :notice => 'Please select date range'
      return
    end

    datefrom = Date.parse(params[:datefrom].getFormattedDate)
    dateto= Date.parse(params[:dateto].getFormattedDate)

    @payments = 
    Payment
    .joins({:user_tab => [:user,{:tab=>:venue}]})
    .select('sum(payments.amount) as total_amount, count(payments) as transactions_count, venues.name as venue_name')
    .group('venues.id')
    .where(created_at: (datefrom.beginning_of_day..dateto.end_of_day))
    .order('total_amount DESC')
  end
end
