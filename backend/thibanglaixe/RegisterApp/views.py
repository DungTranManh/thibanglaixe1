from django.http import HttpResponse
from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from .serializers import RegisterSerializer
from django.contrib.auth.models import User
# Create your views here.


class RegisterView(APIView):

    def post(self, request):
        my_data = RegisterSerializer(data=request.data)
        if not my_data.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)
        username_get = my_data.data['username']
        email_get = my_data.data['email']
        password_get = my_data.data['password']
        firstname_get = my_data.data['firstname']
        lastname_get = my_data.data['lastname']
        new_user = User.objects.create_user(
            username=username_get, first_name=firstname_get, email=email_get, password=password_get, last_name=lastname_get)
        new_user.save()
        return Response(data="oke", status=status.HTTP_200_OK)
