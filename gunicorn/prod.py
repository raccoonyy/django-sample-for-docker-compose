import multiprocessing

bind = '0.0.0.0:8000'
workers = multiprocessing.cpu_count() * 2
timeout = 90
max_requests = 5000
accesslog = '-'

