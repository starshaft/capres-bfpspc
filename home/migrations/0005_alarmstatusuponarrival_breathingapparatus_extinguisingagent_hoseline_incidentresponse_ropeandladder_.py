# Generated by Django 3.0.8 on 2021-01-21 21:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_dutypersonnel_station'),
    ]

    operations = [
        migrations.CreateModel(
            name='RopeAndLadder',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Type', models.CharField(blank=True, max_length=255)),
                ('Length', models.IntegerField(default=0)),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
        ),
        migrations.CreateModel(
            name='HoseLine',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Nr', models.IntegerField(default=0)),
                ('Type', models.CharField(blank=True, max_length=255)),
                ('Length', models.IntegerField(default=0)),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
        ),
        migrations.CreateModel(
            name='ExtinguisingAgent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Quantity', models.IntegerField(default=0)),
                ('Type', models.CharField(blank=True, max_length=255)),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
        ),
        migrations.CreateModel(
            name='BreathingApparatus',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BreathingApparatusNr', models.IntegerField(default=0)),
                ('BreathingApparatusType', models.CharField(blank=True, max_length=255, null=True)),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
        ),
        migrations.CreateModel(
            name='TimeAlarmStatus',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('AlarmStatus', models.CharField(blank=True, choices=[('1st Alarm', '1st Alarm'), ('2nd Alarm', '2nd Alarm'), ('3rd Alarm', '3rd Alarm'), ('4th Alarm', '4th Alarm'), ('5th Alarm', '5th Alarm'), ('Task Force Alpha', 'Task Force Alpha'), ('Task Force Bravo', 'Task Force Bravo'), ('Task Force Charlie', 'Task Force Charlie'), ('Task Force Delta', 'Task Force Delta'), ('Task Force Echo', 'Task Foce Echo'), ('Task Force Hotel', 'Task Force Hotel'), ('Task Force India', 'Task Force India'), ('General Alarm', 'General Alarm')], default='', max_length=255)),
                ('AlarmTime', models.TimeField(blank=True, null=True)),
                ('GroundCommander', models.CharField(blank=True, max_length=255)),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
            options={
                'unique_together': {('Incident', 'AlarmStatus')},
            },
        ),
        migrations.CreateModel(
            name='IncidentResponse',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('TimeDispatched', models.TimeField(blank=True, null=True)),
                ('TimeArrived', models.TimeField(blank=True, null=True)),
                ('TimeReturnedToBase', models.TimeField(blank=True, null=True)),
                ('WaterTankRefilled', models.IntegerField(default=0)),
                ('GasConsumed', models.IntegerField(default=0)),
                ('Engine', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Engines')),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
            options={
                'unique_together': {('Incident', 'Engine')},
            },
        ),
        migrations.CreateModel(
            name='AlarmStatusUponArrival',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('StatusUponArrival', models.CharField(blank=True, choices=[('1st Alarm', '1st Alarm'), ('2nd Alarm', '2nd Alarm'), ('3rd Alarm', '3rd Alarm'), ('4th Alarm', '4th Alarm'), ('5th Alarm', '5th Alarm'), ('Task Force Alpha', 'Task Force Alpha'), ('Task Force Bravo', 'Task Force Bravo'), ('Task Force Charlie', 'Task Force Charlie'), ('Task Force Delta', 'Task Force Delta'), ('Task Force Echo', 'Task Foce Echo'), ('Task Force Hotel', 'Task Force Hotel'), ('Task Force India', 'Task Force India'), ('General Alarm', 'General Alarm')], default='', max_length=255)),
                ('StatusUponArrivalRemarks', models.CharField(blank=True, max_length=255)),
                ('Incident', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='home.Incident')),
            ],
            options={
                'unique_together': {('Incident', 'StatusUponArrival')},
            },
        ),
    ]
