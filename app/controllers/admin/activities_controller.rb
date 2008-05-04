class Admin::ActivitiesController < Admin::BaseController
  active_scaffold :activity do |config|
    config.list.columns=[:user,:item,:money,:commentary,:property,:status]
    config.show.columns=[:user,:item,:money,:commentary,:property,:status]
    #config.create.columns=[:user,:item,:money,:commentary,:property,:status]
    config.update.columns=[:user,:item,:money,:commentary,:property,:status]
    #config.action_links.add 'get_pdf',:label=>'download pdf'
    #config.columns[:name].description='footprint title'
    #config.columns[:title].inplace_edit=true
  end
end
