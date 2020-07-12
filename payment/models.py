from django.db import models
from django.conf import settings


# Create your models here.
class PaymentDetails(models.Model):

    CREDIT_CARD = 'Credit Card'
    DEBIT_CARD = 'Debit Card'
    CARD_TYPES = (
        (CREDIT_CARD, CREDIT_CARD),
        (DEBIT_CARD, DEBIT_CARD)
    )
    MONTH_CHOICES = [(i, i) for i in range(1, 13)]
    YEAR_CHOICES = [(i, i) for i in range(1900, 2051)]

    amount = models.FloatField(verbose_name="Amount")
    currency = models.CharField(max_length=200, verbose_name="Currency")
    card_type = models.CharField(
        max_length=20, verbose_name="Card Type",
        choices=CARD_TYPES, default=CREDIT_CARD)
    card_number = models.BigIntegerField(verbose_name="Card number")
    card_expiration_month = models.IntegerField(
        choices=MONTH_CHOICES, verbose_name="Card Expiration Month")
    card_expiration_year = models.IntegerField(
        choices=YEAR_CHOICES, verbose_name="Card Expiration Year",
        default=2020)
    card_cvv = models.IntegerField()
    authorization_code = models.CharField(max_length=200)
    created_by = models.ForeignKey(
        settings.AUTH_USER_MODEL, on_delete=models.PROTECT,
        blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = "Payment Detail"


class LogTable(models.Model):
    GET = 'GET'
    POST = 'POST'
    PUT = 'PUT'
    PATCH = 'PATCH'
    OPTIONS = 'OPTIONS'
    REQUEST_METHODS = (
        (GET, GET),
        (POST, POST),
        (PUT, PUT),
        (PATCH, PATCH),
        (OPTIONS, OPTIONS)
    )
    request_method = models.CharField(
        max_length=20, verbose_name="Request Method",
        choices=REQUEST_METHODS, default=POST)
    request_url = models.URLField(verbose_name="Request Url")
    request_body = models.TextField(
        max_length=255, verbose_name="Request body")
    request_headers = models.TextField(
        verbose_name="Request Headers")
    response_code = models.CharField(
        max_length=80, verbose_name="Response code")
    response_body_text = models.TextField(verbose_name="Response Body Text")
    created_at = models.DateTimeField(auto_now_add=True, blank=True)

    class Meta:
        verbose_name_plural = "Logs"
