ActiveAdmin.register Book do
  permit_params [:title, :description, :author, :user_id]  

  form do |f|
    f.inputs "Book" do
      f.input :title
      f.input :description
      f.input :author
      f.input :user_id, :input_html => { :value => current_user.id }, as: :hidden
    end
    f.actions
  end
end
