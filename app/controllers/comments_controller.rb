class CommentsController < ApplicationController
  
  before_filter :authenticate, :only => :destroy
  
  def create
    @campaign = Campaign.find(params[:campaign_id])
    @comment = @campaign.comments.create(params[:comment])
    redirect_to campaign_path(@campaign)
  end
  
  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @comment = @campaign.comments.find(params[:id])
    @comment.destroy
    
    redirect_to post_path(@campaign)
  end
end
