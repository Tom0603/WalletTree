from django.db import models
from django.conf import settings
from users.models import CustomUser

uMail = settings.AUTH_USER_MODEL

class Orders(models.Model):
    # Foreign key to get user_email from CustomUser model
    user_email = models.ForeignKey(uMail, on_delete=models.CASCADE)

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
