class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :email, :bio, :greatest_assets, :greatest_challenges, :education_level, :fav_subjects, :fav_activities, :soft_skills, :support_types, :eager_scale, :active_pathway, :life_dream, :community_dream, :world_dream, :facilitator_id, :updated_at, :image, :bio_worksheet, :development_worksheet, :sustainability_worksheet, :college_prep_worksheet, :five_years_worksheet, :blue_image, :orange_image, :green_image


  # def dream_images
  #     return unless object.dream_images.attached?
  #     images = []

  #     object.dream_images.blobs.each do |image|
  #       images << image.attributes
  #         .slice('filename', 'byte_size')
  #         .merge(url: url_for(image))
  #         .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  #     end

  #     images
  # end

  # def dream_images_url
  #   url_for(object.image)
  # end

  def blue_image
    return unless object.blue_image.attached?

    object.blue_image.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: blue_image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def blue_image_url
    url_for(object.blue_image)
  end

  def orange_image
    return unless object.orange_image.attached?

    object.orange_image.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: orange_image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def orange_image_url
    url_for(object.orange_image)
  end

  def green_image
    return unless object.green_image.attached?

    object.green_image.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: green_image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def green_image_url
    url_for(object.green_image)
  end

  def image
    return unless object.image.attached?

    object.image.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: image_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def image_url
    url_for(object.image)
  end

  def five_years_worksheet
    return unless object.five_years_worksheet.attached?

    object.five_years_worksheet.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: five_years_worksheet_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def five_years_worksheet_url
    url_for(object.five_years_worksheet)
  end

  def college_prep_worksheet
    return unless object.college_prep_worksheet.attached?

    object.college_prep_worksheet.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: college_prep_worksheet_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def college_prep_worksheet_url
    url_for(object.college_prep_worksheet)
  end

  def sustainability_worksheet
    return unless object.sustainability_worksheet.attached?

    object.sustainability_worksheet.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: sustainability_worksheet_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def sustainability_worksheet_url
    url_for(object.sustainability_worksheet)
  end

  def development_worksheet
    return unless object.development_worksheet.attached?

    object.development_worksheet.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: development_worksheet_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def development_worksheet_url
    url_for(object.development_worksheet)
  end

  def bio_worksheet
    return unless object.bio_worksheet.attached?

    object.bio_worksheet.blob.attributes
          .slice('filename', 'byte_size')
          .merge(url: bio_worksheet_url)
          .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  end

  def bio_worksheet_url
    url_for(object.bio_worksheet)
  end


  def updated_at
    object.updated_at.to_date
  end
end
