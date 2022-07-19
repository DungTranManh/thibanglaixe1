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
        username = my_data.data['username']
        email = my_data.data['email']
        password = my_data.data['password']
        new_user = User.objects.create_user(username, email, password)
        new_user.save()
        return Response(data="oke", status=status.HTTP_200_OK)
