class AuditLogsController < ApplicationController
	def index
		@pagy, @audit_logs = pagy(AuditLog.all, items: 10)
		authorize @audit_logs
	end

end
