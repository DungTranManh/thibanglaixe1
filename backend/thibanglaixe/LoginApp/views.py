from django.shortcuts import render
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.contrib.auth import authenticate, login
from .serializers import LoginSerializer
# Create your views here.


class LoginView(APIView):
    def post(self, request):
        my_data = LoginSerializer(data=request.data)
        if not my_data.is_valid():
            return Response(status=status.HTTP_400_BAD_REQUEST)
        username_login = my_data.data['username']
        password_login = my_data.data['password']
        checking_user = authenticate(
            request, username=username_login, password=password_login)
        if checking_user is not None:
            login(request, checking_user)
            return Response(data="Login thanh cong", status=status.HTTP_200_OK)
        else:
            return Response(data="User khong ton tai", status=status.HTTP_404_NOT_FOUND)
