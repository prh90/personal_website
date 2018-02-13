class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_path, notice: ' Your portfolio was created'}
      else
        format.html {render :new}
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  # private

  #   def set_blog
  #     @portfolio_item = Portfolio.find(params[:id])
  #   end

  # def portfolio_params
  #   params.require(:portfolio).permit(:title, :subtitle, :body)
  # end
end
