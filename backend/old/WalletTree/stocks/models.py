from django.db import models
from auth import User

class Orders(models.Model):
    user_email = models.ForeignKey(User, on_delete=models.CASCADE, primary_key=True)
    timestamp = models.DateTimeField(auto_now_add=True, primary_key=True)
    ticker = models.CharField(max_length=20, primary_key=True)
    stock_name = models.CharField(max_length=50)
    shares = models.FloatField()
    price = models.FloatField()

    def __str__(self):
        return self.stock_symbol
