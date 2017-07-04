# -*- coding: utf-8 -*-
# Generated by Django 1.11.2 on 2017-06-15 17:38
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('videos', '0007_auto_20170615_1124'),
    ]

    operations = [
        migrations.AddField(
            model_name='videotag',
            name='status',
            field=models.CharField(choices=[(b'SEEN', b'Seen'), (b'UNSEEN', b'Unseen')], default=b'UNSEEN', max_length=2),
        ),
    ]
