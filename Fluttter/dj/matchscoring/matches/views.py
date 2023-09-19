# matches/views.py

from django.shortcuts import render, redirect
from .models import Score,Match
from .forms import MatchForm,ScoreForm  # You'll need to create a MatchForm

def create_match(request):
    if request.method == 'POST':
        form = MatchForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('match_list')  # Redirect to the list of matches or another appropriate page
    else:
        form = MatchForm()
    
    return render(request, 'matches/create_match.html', {'form': form})
def update_scores(request, match_id):
    match = Match.objects.get(pk=match_id)
    
    if request.method == 'POST':
        form = ScoreForm(request.POST)
        if form.is_valid():
            score = form.save(commit=False)
            score.match = match
            score.save()
            return redirect('match_details', match_id=match_id)  # Redirect to match details or another appropriate page
    
    else:
        form = ScoreForm()
    
    return render(request, 'matches/update_scores.html', {'form': form, 'match': match})
def match_details(request, match_id):
    match = Match.objects.get(pk=match_id)
    scores = Score.objects.filter(match=match)
    
    return render(request, 'matches/match_details.html', {'match': match, 'scores': scores})