from django.urls import path
from .payment_gateway import *


urlpatterns = [
    path('v1/post/', PostPaymentApi.as_view(), name="post-payment"),
]
