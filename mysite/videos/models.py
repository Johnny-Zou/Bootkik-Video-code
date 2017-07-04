from django.db import models

# Create your models here.
class Video(models.Model):
    title = models.CharField(max_length=100)
    vimeo_id = models.CharField(max_length=500, default ='208337377')
    video_thumbnail = models.ImageField(upload_to='img/')
    learning_level = models.PositiveSmallIntegerField(default=1)
    unlock_lvl = models.PositiveSmallIntegerField(default=0)
    reward_default = models.PositiveSmallIntegerField(default=10)

    @property
    def getLargestTag(self):
        highestTag = 0
        for tag in self.videotag_set.all():
            if(highestTag < tag.end):
                highestTag = tag.end
        return highestTag

    @property
    def numTags(self):
        tagNumber = 0
        for tag in self.videotag_set.all():
            tagNumber = tagNumber + 1
        return tagNumber

    def __unicode__(self):
        return self.title

class VideoTag(models.Model):
    title = models.CharField(max_length=100, default='Video Title')
    start = models.PositiveSmallIntegerField(default=1)
    end = models.PositiveSmallIntegerField(default =1)
    status = models.CharField(max_length=256, choices=[('unseen', 'unseen'), ('seen', 'seen')])
    video = models.ForeignKey(Video, on_delete=models.CASCADE, null=True)

    def __unicode__(self):
        return self.title
    @property
    def length(self):
        return self.end - self.start
    @property
    def getPercent(self):
        difference = self.length
        division = float(difference) / float(self.video.getLargestTag)
        return round(division * 0.95 * 100, 5)


class videoQuestion(models.Model):
    question_text = models.CharField(max_length=100, default='Are you interested?')
    time = models.PositiveSmallIntegerField(default=1)
    video = models.ForeignKey(Video, on_delete=models.CASCADE, null=True)

    def __unicode__(self):
        return self.question_text
