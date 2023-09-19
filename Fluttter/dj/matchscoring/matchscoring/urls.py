from django.urls import path, include

urlpatterns = [
    # ... other URL patterns
    path('matches/', include('matches.urls')),  # Include the app's URLs
]
