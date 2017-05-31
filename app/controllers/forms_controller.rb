class FormsController < ApplicationController
  def new
   @form = Form.new
  end

  def create
   @form = Form.new(form_params)
   @form.save
   flash[:register] = "Ваш запрос обработан, мы свяжемся с вами как можно быстрее:)"
   redirect_to new_user_session_path
  end

  private 

   def form_params
    params.require(:form).permit(:name, :email, :description, :container, :proxod, :number)
   end
end
