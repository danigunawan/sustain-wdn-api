class Api::V1::PathwaysController < ApplicationController
  before_action :set_user, except: [:index, :create]
  before_action :check_user, except: [:index, :create, :show]

  skip_before_action :authorize_request, only: [:create]

  def index
    pathways = Pathway.all

    if pathways
      render json: pathways
    else
      render json: 'Unable to get pathways', status: 400
    end
  end



  private

    # Get the user from the url
    def set_user
      @user = User.find(params[:id])
    end
  
    # Check if the user got from the url is the same as the current_user otherwise throw an error
    def check_user
      render json: 'You are unauthorized!', status: 401 unless @user.id == current_user.id || @user.facilitator_id == current_user.id || current_user.admin
    end
  
    # Permitting the user's params
    def user_params
      params.permit(:name, :email, :bio, :greatest_assets, :greatest_challenges, :education_level, :fav_subjects, :fav_activities, :soft_skills, :support_types, :eager_scale, :active_pathway, :life_dream, :community_dream, :world_dream, :facilitator_id, :image, :password, :bio_worksheet, :development_worksheet, :sustainability_worksheet, :college_prep_worksheet, :five_years_worksheet)
    end
end
