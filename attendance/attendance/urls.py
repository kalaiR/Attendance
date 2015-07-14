

from django.conf import settings
from django.conf.urls import patterns, include, url

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    url(r'^$', 'attendance.views.home', name='home'),
    url(r'^timingsheet/$', 'attendance.views.timing_sheet', name='timing_sheet'),
    url(r'^attendancesheet/$', 'attendance.views.attendance_sheet', name='attendance_sheet'),
    url(r'^home/$', 'attendance.views.home', name='home'),
    # url(r'^attendance/', include('attendance.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)

