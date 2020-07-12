from django.urls import include, path

urlpatterns = [
    path('api/', include(('payment.apis.urls', 'payment'), namespace="payment-api")),
]