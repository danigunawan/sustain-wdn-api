require 'rails_helper'

RSpec.describe User, type: :model do

  it { should belong_to(:facilitator) }
  it { should have_and_belong_to_many(:pathways) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  # it { should validate_presence_of(:educartion_level) }
  # it { should validate_presence_of(:fav_subjects) }
  # it { should validate_presence_of(:fav_activities) }
  # it { should validate_presence_of(:soft_skills) }
  # it { should validate_presence_of(:support_types) }
  # it { should validate_presence_of(:eager_scale) }
  
end
