module CampaignsHelper
  def join_technologies(campaign)
    campaign.technologies.map { |t| t.title }.join(", ")
  end
end
