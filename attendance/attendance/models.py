
from django.db.models.signals import post_save
from django.dispatch import receiver, dispatcher
from django.db.models import signals
from django.db import models
from django.shortcuts import get_object_or_404, render_to_response
import datetime


class EmployeeDetails(models.Model):
    
    empid=models.CharField(max_length=4, unique=True)
    name=models.CharField(max_length=20)
    department=models.CharField(max_length=20)
    address=models.CharField(max_length=100)
    phoneno=models.CharField(max_length=12)
    accountno=models.CharField(max_length=20)
    created =models.DateTimeField(default=datetime.datetime.now)
    modified=models.DateTimeField()
    
    def __unicode__(self):
        return self.name
      
class TimingSheet(models.Model):
    ref_id=models.ForeignKey(EmployeeDetails, default=0, null=False)
    empid=models.CharField(max_length=4, unique=True)
    empname=models.CharField(max_length=20)
    
    def __unicode__(self):
        return self.empname

class Attendance(models.Model):  
    ref_id=models.ForeignKey(EmployeeDetails, default=0, null=False)
    empid=models.CharField(max_length=20, unique=True)  
    empname=models.CharField(max_length=20)
    working_days=models.FloatField(default=0, null=False)
    leave_days=models.FloatField(default=0, null=False)
    permissions=models.FloatField(default=0, null=False)
    present_days=models.FloatField(default=0, null=False)
    
    def __unicode__(self):
        return self.empname
    
    def save(self, force_insert=False, force_update=False):
        self.present_days = float(self.working_days) - float(self.leave_days) 
        super(Attendance, self).save(force_insert, force_update)
    
def timesheet_save(sender, instance, **kwargs):
        
    timingsheet =TimingSheet()
    timingsheet.ref_id_id=instance.id
    timingsheet.empid=instance.empid
    timingsheet.empname=instance.name
    timingsheet.save(force_update=False)
post_save.connect(timesheet_save, sender=EmployeeDetails, dispatch_uid="timesheet_save_count") 

def attendance_save(sender, instance, **kwargs):
    print 1
    attendance =Attendance()
    attendance.ref_id_id=instance.id
    attendance.empid=instance.empid
    attendance.empname=instance.name
    attendance.save()

post_save.connect(attendance_save, sender=EmployeeDetails, dispatch_uid="attendance_save_count")         








    
    
    