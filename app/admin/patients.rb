ActiveAdmin.register Patient do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :number, :name, :gender, :birthday, :address, :phone_number, :supporters_phone_number, :supporters_name, :relation, :main_disease, :medical_history, :allergy, :care_level, :information
  #
  # or
  #
  # permit_params do
  #   permitted = [:number, :name, :gender, :birthday, :address, :phone_number, :supporters_phone_number, :supporters_name, :relation, :main_disease, :medical_history, :allergy, :care_level, :information]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
