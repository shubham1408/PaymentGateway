import random
import string
from django.conf import settings
from payment.models import LogTable, PaymentDetails
from rest_framework import status


def create_entry_to_log_table(log_data):
    LogTable.objects.create(**log_data)


def create_entry_to_payment_detail_table(request_data, request_user):
    return PaymentDetails.objects.create(**{
        'amount': request_data.get('amount'),
        'currency':  request_data.get('currency'),
        'card_type':  request_data.get('type'),
        'card_number': request_data.get('card.card_number'),
        'card_expiration_month': request_data.get('card.card_expiration_month'),
        'card_expiration_year': request_data.get('card.card_expiration_year'),
        'card_cvv': request_data.get('card.card_cvv'),
        'authorization_code': ''.join(random.choices(
            string.ascii_uppercase + string.digits, k=12)),
        'created_by': request_user
    })


def success_reponse(data):
    return {
        "amount": data.amount, "currency": data.currency, "type": data.card_type,
        "card": {"number": data.card_number},
        "status": "success", "authorization_code": data.authorization_code,
        "time": data.created_at.strftime("%d-%b-%Y (%H:%M:%S)")
    }, status.HTTP_201_CREATED


def post_payment_into_db(**kwargs):
    response_content, status_code = success_reponse(
        create_entry_to_payment_detail_table(
            kwargs.get('kwargs').get('log_data').get('request_body'),
            kwargs.get('kwargs').get('user').is_anonymous
            if not kwargs.get('kwargs').get('user').is_anonymous else None
        )
    )
    kwargs.get('kwargs').get('log_data').update(
        {'response_code': status_code,
         'response_body_text': response_content
         }
    )
    create_entry_to_log_table(kwargs.get('kwargs').get('log_data'))
    return response_content, status_code
