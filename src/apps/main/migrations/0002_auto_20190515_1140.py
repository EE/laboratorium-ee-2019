# Generated by Django 2.2.1 on 2019-05-15 09:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='homepage',
            name='header_en',
            field=models.CharField(max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='homepage',
            name='header_pl',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
