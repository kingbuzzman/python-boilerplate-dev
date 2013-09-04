from settings import *

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'sample',
        'USER': 'postgres',
        'PASSWORD': 'password',
        'HOST': 'db.sample.com',
        'PORT': '1234',
    }
}

CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.memcached.MemcachedCache',
        'LOCATION': 'memcache.sample.com:11211',
    }
}
