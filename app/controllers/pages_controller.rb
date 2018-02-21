class PagesController < ApplicationController

  def index
    #TODO this will be the apps landing page
  end

  def show
  end

  # def new
  #   @page = Page.new
  # end

  def edit
  end

  def create
    page = Page.new(page_params)

    respond_to do |format|
      if page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
    end
  end

  private
    def page
      return @page if @page
      if params[:id]
        @page = Page.find(params[:id])
      else
        @page = Page.new
      end
    end

    def page_params
      params.require(:page).permit(:author_id, :parent_option_id)
    end
end
