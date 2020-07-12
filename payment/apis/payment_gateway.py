from rest_framework.response import Response
from rest_framework import (status, views)
from .serializers import PostpaymentSerializer
from payment.services import post_payment_into_db


class PostPaymentApi(views.APIView):
    """
    API url -- 'http://127.0.0.1:8000/payment/api/v1/post/'

    Payment api used for posting a payment through
    CREDIT CARD/ DEBIT CARD
    """
    serializer_class = PostpaymentSerializer

    def post(self, request):
        serializer = self.serializer_class(data=request.data)
        if serializer.is_valid():
            result, status_code = self.get_response_content(request)
            return Response({'result': result}, status=status_code)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def get_response_content(self, request):
        return post_payment_into_db(
            kwargs={
                'user': request.user
                'log_data': {
                    "request_method": request.method,
                    "request_url": request._request.get_raw_uri(),
                    "request_body": request.data,
                    "request_headers": request.headers
                }
            }
        )
