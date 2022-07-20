from rest_framework import serializers


class RegisterSerializer(serializers.Serializer):
    username = serializers.CharField(max_length=255)
    email = serializers.EmailField(max_length=255)
    password = serializers.CharField()
    firstname = serializers.CharField(max_length=255)
    lastname = serializers.CharField(max_length=255)
