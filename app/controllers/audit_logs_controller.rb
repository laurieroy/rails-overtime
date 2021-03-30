class AuditLogsController < ApplicationController
	def index
		@pagy, @audit_logs = pagy(AuditLog.all, items: 10)
		authorize @audit_logs
	end

	def confirm
		audit_log = AuditLog.find(params[:id])
		authorize audit_log
		audit_log.confirmed!
		redirect_to root_path, notice: "Thank you, your confirmation has been successfully logged."
	end

end
