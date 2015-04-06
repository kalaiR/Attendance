from django.shortcuts import render_to_response
from django.template import RequestContext
from attendance.models import *
# import datetime as dt
from datetime import datetime



def home(request):
    
    return render_to_response('attendance/index.html', context_instance=RequestContext(request))

def timing_sheet(request):

    requestdate= datetime.utcnow()
    timingsheet = TimingSheet.objects.all().exclude(empid='010').order_by('empname')

    print "11"
    count=timingsheet.count() + 1
    
    print "count", count
  
    
    return render_to_response('attendance/timingsheet.html',{'requestdate':requestdate,'timingsheet':timingsheet,'count':count}, context_instance=RequestContext(request))


def attendance_sheet(request):
    attendance_sheet = Attendance.objects.all()
    print attendance_sheet
    requestdate= datetime.utcnow()
    month=requestdate.strftime("%B")
    print month
    return render_to_response('attendance/attendance.html', {'attendance_sheet':attendance_sheet,'requestdate':requestdate,'month':month}, context_instance=RequestContext(request))
    
    
        
    
    