class BrandsController < ApplicationController

  include ResourcefulController
  include AuthorizableController
  
  private

  def permitted_params
    [:name]
  end

end
