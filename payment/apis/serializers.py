from rest_framework import serializers
from payment.models import PaymentDetails


class CardSerializer(serializers.Serializer):
    card_number = serializers.IntegerField()
    card_expiration_month = serializers.ChoiceField(
        choices=PaymentDetails.MONTH_CHOICES)
    card_expiration_year = serializers.ChoiceField(
        choices=PaymentDetails.YEAR_CHOICES)
    card_cvv = serializers.IntegerField()


class PostpaymentSerializer(serializers.Serializer):

    amount = serializers.FloatField()
    currency = serializers.CharField()
    type = serializers.ChoiceField(
    	choices=PaymentDetails.CARD_TYPES)
    card = CardSerializer()
