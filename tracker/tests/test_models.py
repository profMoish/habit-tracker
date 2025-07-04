# tracker/tests/test_models.py

import pytest
from tracker.models import Habit

@pytest.mark.django_db
def test_create_habit():
    habit = Habit.objects.create(name="Drink water", periodicity="daily")
    assert habit.name == "Drink water"
