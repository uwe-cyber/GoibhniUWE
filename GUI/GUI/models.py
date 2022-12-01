from django.db import models

# Create your models here.
class QuesModel(models.Model):
    question = models.CharField(max_length=200,null=True)
    answer_1 = models.CharField(max_length=200,null=True)
    answer_2 = models.CharField(max_length=200,null=True)
    answer_3 = models.CharField(max_length=200,null=True)
    
    def __str__(self):
        return self.question
