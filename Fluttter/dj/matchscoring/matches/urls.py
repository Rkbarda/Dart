from django.urls import path
from . import views

urlpatterns = [
    path('matches/', views.match_list, name='match_list'),
    path('match/<int:match_id>/', views.match_details, name='match_details'),
    path('match/<int:match_id>/score-entry/', views.score_entry, name='score_entry'),
    # Add more URL patterns as needed
]
