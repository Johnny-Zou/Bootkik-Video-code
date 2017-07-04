# Bootkik-Video-code
This Django code contains the template for viewing a video it requires a mySQL database:

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'djangoDataBase',
        'USER': 'djangoUsername',
        'PASSWORD': 'djangoPassword',
        'HOST':'',
        'PORT':'',
    }
}
  
If the Django development server is hosted on localhost at port 8000:

localhost:8000/admin - Navigates to the Django Admin Panel

tested with:


localhost:8000/videos/testing/1 - loads the template that has video pk=1
