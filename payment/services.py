import payment.providers as payment_provider


def post_payment_into_db(**kwargs):
    return payment_provider.post_payment_into_db(**kwargs)

