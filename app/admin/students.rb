ActiveAdmin.register Student do
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
  selectable_column
  index_column
  column :name
  column :ernumber
  column :mobile_no
  column :city
  column :branch
  actions
  # sortable: false

end

  config.filters = false
#Index pagination
ActiveAdmin.setup do |config|
  config.default_per_page = 6
end
end
