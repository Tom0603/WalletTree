from django.shortcuts import render
from stocks.models import Orders
from .serializer import OrderSerializer
from rest_framework import viewsets

class Orders(viewsets.ModelViewSet):
    queryset = Orders.objects.all()
    serializer_class = OrderSerializer
