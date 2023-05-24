# Generated by Django 2.2.28 on 2023-05-24 10:15

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Orders',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('timestamp', models.DateTimeField(auto_now_add=True)),
                ('ticker', models.CharField(max_length=20)),
                ('stock_name', models.CharField(max_length=50)),
                ('shares', models.FloatField()),
                ('price', models.FloatField()),
                ('user_email', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.AddConstraint(
            model_name='orders',
            constraint=models.UniqueConstraint(fields=('user_email', 'timestamp', 'ticker'), name='unique_key_combination'),
        ),
    ]
