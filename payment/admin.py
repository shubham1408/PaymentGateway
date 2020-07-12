from django.contrib import admin
from payment.models import LogTable, PaymentDetails


@admin.register(LogTable)
class LogTableAdmin(admin.ModelAdmin):
    model = LogTable

    list_display = [
    	'id', 'request_method', 'request_url', 
    	'request_body', 'request_headers', 'response_code',
    	'response_body_text'
    ]

    def has_delete_permission(self, request, obj=None):
        return False

    def has_change_permission(self, request, obj=None):
        return False

    def has_add_permission(self, request):
        return False


@admin.register(PaymentDetails)
class PaymentDetailsAdmin(admin.ModelAdmin):
    model = PaymentDetails

    list_display = [
    	'id', 'amount', 'currency', 'card_type',
    	'card_number', 'card_expiration_month',
    	'card_expiration_year', 'card_cvv',
    	'authorization_code', 'created_by'
    ]

    def has_delete_permission(self, request, obj=None):
        return False

    def has_change_permission(self, request, obj=None):
        return False

    def has_add_permission(self, request):
        return False

