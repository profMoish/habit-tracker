# tracker/tests/test_views.py

import pytest
from django.urls import reverse
from django.test import Client

@pytest.mark.django_db
def test_homepage_status_code():
    client = Client()
    response = client.get(reverse("home"))  # замените "home" на свою view
    assert response.status_code == 200
