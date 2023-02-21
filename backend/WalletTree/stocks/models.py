from django.db import models
from users.models import User


class Orders(models.Model):
    user_email = models.ForeignKey(User, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    ticker = models.CharField(max_length=20)
    stock_name = models.CharField(max_length=50)
    shares = models.FloatField()
    price = models.FloatField()

    class Meta:
        constraints = [
            models.UniqueConstraint(
                fields=["user_email", "timestamp", "ticker"], name="unique_key_combination"
            )
        ]
