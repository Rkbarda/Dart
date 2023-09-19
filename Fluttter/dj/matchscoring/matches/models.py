# models.py in the 'matches' app

from django.db import models

class Team(models.Model):
    name = models.CharField(max_length=100)

class Player(models.Model):
    name = models.CharField(max_length=100)
    team = models.ForeignKey(Team, on_delete=models.CASCADE)

class Match(models.Model):
    team_a = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='team_a')
    team_b = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='team_b')
    date = models.DateField()

class Score(models.Model):
    match = models.ForeignKey(Match, on_delete=models.CASCADE)
    player = models.ForeignKey(Player, on_delete=models.CASCADE)
    runs = models.IntegerField()
