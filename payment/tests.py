from django.test import TestCase
from django.contrib.auth.models import User
from rest_framework.test import APIClient
from rest_framework.reverse import reverse
from rest_framework import status


class ApiTestCases(TestCase):

    def setUp(self):
        self.client = APIClient()
        self.user_data = {
            'username': 'namotest', 'password': 'namotest',
            'last_login': None, 'is_superuser': True,
            'email': 'dwivedishubham953@gmail.com',
            'is_staff': True, 'is_active': True}
        self.user = User.objects.create(**self.user_data)

    def test_to_post_payment_through_django_user(self):
        """
        Test for posting a payment through django user 
        """
        self.client.login(username='namotest', password='namotest')
        session = self.client.session
        session.save()
        payload = {
            'amount': ['13'], 'currency': ['IND'], 'type': ['Credit Card'],
            'card.card_number': ['4367788888888'], 'card.card_expiration_month': ['1'],
            'card.card_expiration_year': ['1900'], 'card.card_cvv': ['4784']
        }
        response = self.client.post(
            reverse('payment:payment-api:post-payment'), payload)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)

    def test_to_post_payment_through_anonymous_user(self):
        """
        Test for posting a payment through anonymous user 
        """
        payload = {
            'amount': ['15'], 'currency': ['USD'], 'type': ['Debit Card'],
            'card.card_number': ['4367788888888'], 'card.card_expiration_month': ['1'],
            'card.card_expiration_year': ['1900'], 'card.card_cvv': ['4784']
        }
        response = self.client.post(
            reverse('payment:payment-api:post-payment'), payload)
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)
