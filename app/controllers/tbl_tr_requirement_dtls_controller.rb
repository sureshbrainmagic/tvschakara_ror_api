class TblTrRequirementDtlsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def getTodayTaskForOperator
        operatoremplcode = params[:operator_emp_code]
        #result = TblTrRequirementDtl.where(operator_emp_code: operatoremplcode)
        @result = TblTrRequirementDtl.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).where(operator_emp_code: operatoremplcode).order('id DESC')
    
        if @result.present?
            render json: {
                status: :ok,
                is_success: true,
                messages: "List of Task",
                data: @result
            }
        else
            render json: {
                messages: "No Task Available",
                is_success: false,
                data: {}
            }
            #, status: :unauthorized
        end
    end

    def todayCount
        operatoremplcode = params[:operator_emp_code]
        @result = TblTrRequirementDtl.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).where(operator_emp_code: operatoremplcode)
        #@result = TblTrRequirementDtl
        noOfRecord = @result.count
        if @result.present?
            render json: {
                status: :ok,
                is_success: true,
                messages: "List of Task",
                data: noOfRecord
            }
        else
            render json: {
                messages: "No Task Available",
                is_success: false,
                data: {}
            }
            #, status: :unauthorized
        end
    end
end
