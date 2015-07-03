class MeatNavigator < Crabfarm::BaseNavigator

  def run
    if params[:section]
      browser.goto "http://www.jumbo.cl/FO/CategoryDisplay?patron=#{params[:section]}"
    end

    reduce_with_defaults
  end

end
