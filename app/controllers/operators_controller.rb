class OperatorsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def loginChk
    @operator = Operator.find_by(login_params)        

        if @operator.present?
            render json: {
                status: :ok,
                is_success: true,
                messages: "Sigin Successfully",                
                operator: @operator                
            }
        else
            render json: {
                messages: "Unauthorized, Invalid Username or Password",
                is_success: false,
                data: {}
            }
            #, status: :unauthorized
        end
  end

  def index
    @operator = Operator.all
    if @operator.present?
      render json: {
          status: :ok,
          is_success: true,
          messages: "Success",
          operator: @operator                
      }
    else
      render json: {
          messages: "No Record Found",
          is_success: false,
          data: {}
      }
    end

  end


  def show
    result = Operator.find(params[:id])
    if result.present?
      render json: {
          status: :ok,
          is_success: true,
          messages: "Success",
          operator: result               
      }
    else
      render json: {
          messages: "No Record Found",
          is_success: false,
          data: {}
      }
    end
  end

  private

    def set_operator
      @operator = Operator.find(params[:id])
    end

    def login_params
        params.require(:operator).permit(:operator_emp_name, :Password) 
    end

end
