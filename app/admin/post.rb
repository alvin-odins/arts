ActiveAdmin.register Post do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


  index do
    # column :category
    column :title
    column :description
    column :measurement
    column :artist
    column :category
    column "Posted", :created_at
    column "Modified", :updated_at
    # column :image_file_name
    # column :image_content_type
    # column :image_file_size
    # column :image_pdated_at
    column :image
    actions
  end

  # index :as => :grid do |post|
  #   div do
  #     a :href => admin_post_path(post) do
  #       image_tag( post.image)
  #     end
  #   end
  #   a truncate(post.title), :href => admin_post_path(post)
  # end

  form html: { enctype: "multipart/form-data" } do |f|
    f.inputs "New Post", multipart: true do
      f.input :title, required: true
      f.input :description, required: true
      f.input :measurement, required: true
      f.input :artist, required: true
      f.input :category, required: true
      f.input :image, required: true, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :measurement
      row :artist
      row :category
      row :image do
        image_tag post.image.url
      end
    end
    active_admin_comments
  end

  permit_params :title, :description, :measurement, :artist, :category, :image

end
