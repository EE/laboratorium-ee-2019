# Generated by Django 2.2.3 on 2019-07-05 08:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projects', '0017_topicpage_phone_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='projectpage',
            name='project_url',
            field=models.URLField(blank=True),
        ),
    ]