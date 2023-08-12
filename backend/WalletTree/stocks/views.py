from django.core.exceptions import ValidationError
from stocks.models import Orders
from users.models import CustomUser
from .serializer import OrderSerializer

from rest_framework import viewsets, status
from rest_framework.response import Response


class OrderView(viewsets.ModelViewSet):
    queryset = Orders.objects.all()
    serializer_class = OrderSerializer

    def create(self, request, *args, **kwargs):
        # Create a mutable copy of the request data
        data = request.data.copy()

        # Retrieve the user email provided in the request data
        user_email = data.get('user_email')

        # Validate the email address format
        try:
            CustomUser._meta.get_field('email').clean(user_email, None)
        except ValidationError as e:
            return Response({'error': 'Invalid email address format.'}, status=status.HTTP_400_BAD_REQUEST)

        # Retrieve the user based on the email
        try:
            user = CustomUser.objects.get(email=user_email)
        except CustomUser.DoesNotExist:
            return Response({'error': 'User with the provided email address does not exist.'},
                            status=status.HTTP_400_BAD_REQUEST)

        # Assign the user instance to the user_email field in the mutable request data
        data['user_email'] = user.pk

        serializer = self.get_serializer(data=data)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)
