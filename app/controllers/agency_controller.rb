class AgencyController < ApplicationController
  skip_before_filter :authorize

  def index
    @puppies = Puppy.paginate(page: params[:page], per_page: 4).order(:name)
  end

end
