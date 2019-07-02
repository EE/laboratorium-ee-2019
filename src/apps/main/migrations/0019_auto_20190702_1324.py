# Generated by Django 2.2.3 on 2019-07-02 11:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0018_contactform'),
    ]

    operations = [
        migrations.AddField(
            model_name='newspage',
            name='cta_question',
            field=models.CharField(blank=True, max_length=200),
        ),
        migrations.AddField(
            model_name='newspage',
            name='cta_question_en',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='newspage',
            name='cta_question_pl',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]
