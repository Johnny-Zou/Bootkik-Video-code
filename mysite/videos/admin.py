from django.contrib import admin

from .models import Video, VideoTag, videoQuestion
# Register your models here.

class videoTagInline(admin.TabularInline):
	model = VideoTag
	extra = 0

class videoQuestiontsInline(admin.TabularInline):
	model = videoQuestion
	extra = 0

class videoAdmin(admin.ModelAdmin):
	inlines = [videoTagInline, videoQuestiontsInline]


admin.site.register(Video, videoAdmin)
