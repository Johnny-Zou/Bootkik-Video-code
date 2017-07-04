from django.http import HttpResponse, Http404
from django.shortcuts import get_object_or_404, render

from models import Video, VideoTag

def index(request):
	return HttpResponse("Hello, world. You're at the videos index.")

def oneVideo(request, video_id):
	try:
		video = get_object_or_404(Video, pk=video_id)
		if video:
			tagList = []
			initial = 0
			#copy the foreign key from the first video
			firstObj = video.videotag_set.first()
			foreignKey = firstObj.video
			for tag in video.videotag_set.all().order_by('start'):
				if(tag.start == initial):
					#append to list
					tagList.append(tag)
				else:
					#create new tag from initial to tag.start and append to list
					tempObj = VideoTag.objects.create(title='1', start=initial, end=tag.start , status='seen',video=foreignKey)
					tagList.append(tempObj)
					#then append the tag to the list
					tagList.append(tag)
				initial = tag.end
	except Video.DoesNotExist:
		raise Http404("Video does not exist")
	return render(request, 'videos/oneVideo.html', {'video': video, 'tagList': tagList}) #pass in the tags as a list

def oneVideoTesting(request, video_id):
	try:
		video = get_object_or_404(Video, pk=video_id)
		if video:
			tagList = []
			initial = 0
			#copy the foreign key from the first video
			firstObj = video.videotag_set.first()
			foreignKey = firstObj.video
			for tag in video.videotag_set.all().order_by('start'):
				if(tag.start == initial):
					#append to list
					tagList.append(tag)
				else:
					#create new tag from initial to tag.start and append to list
					tempObj = VideoTag.objects.create(title='1', start=initial, end=tag.start , status='seen',video=foreignKey)
					tagList.append(tempObj)
					#then append the tag to the list
					tagList.append(tag)
				initial = tag.end
	except Video.DoesNotExist:
		raise Http404("Video does not exist")
	return render(request, 'videos/VideoTesting.html', {'video': video, 'tagList': tagList}) #pass in the tags as a list