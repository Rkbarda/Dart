from datetime import timezone
from django import forms
from .models import Match 
from .models import Score# Import the Match model from your models.py file


class MatchForm(forms.ModelForm):
    class Meta:
        model = Match
        fields = ['match_date', 'team_a', 'team_b']
        labels = {
            'match_date': 'Match Date',
            'team_a': 'Team A',
            'team_b': 'Team B',
        }
        widgets = {
            'match_date': forms.DateInput(attrs={'class': 'datepicker'}),
        }
    def clean_match_date(self):
        match_date = self.cleaned_data.get('match_date')
        if match_date < timezone.now().date():
            raise forms.ValidationError("Match date cannot be in the past.")
        return match_date
class ScoreForm(forms.ModelForm):
    class Meta:
        model = Score  # Specify the model the form is based on
        fields = ['runs', 'wickets', 'overs']  # Specify the fields you want in the form