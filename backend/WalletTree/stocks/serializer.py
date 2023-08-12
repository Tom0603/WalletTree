from rest_framework import serializers

from .models import Orders
from django.contrib.auth import get_user_model


User = get_user_model()

class EmailField(serializers.RelatedField):
    def to_representation(self, value):
        return value.email

class OrderSerializer(serializers.ModelSerializer):
    user_email = serializers.EmailField()

    class Meta:
        model = Orders
        fields = [
            "user_email",
            "ticker",
            "shares",
            "price"
        ]
