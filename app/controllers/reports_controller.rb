class ReportsController < ApplicationController
  def index
  end

  def show_report

    if (params[:venue_id].blank? ||  params[:datefrom].blank? || params[:dateto].blank?)
      flash[:notice] = "Please select from date, to date and venue"
      redirect_to :back, :notice => 'Please select from date, to date and venue'
      return 
    end
    
    venue = Venue.find(params[:venue_id])
    datefrom = params[:datefrom].getFormattedDate
    dateto= params[:dateto].getFormattedDate
    #@payments = Payment.includes(:user_tab).each{|p| p.user_tab if p.user_tab.tab.venue == venue}
    @payments = []
    @total = 0
    pmts = Payment.includes(:user_tab).where(created_at: (datefrom..dateto))
    pmts.each do |payment|
      if payment.user_tab.tab.venue==venue
        @payments << payment
        @total+=payment.amount
      end
    end
  end
end
