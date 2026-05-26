FROM busybox

EXPOSE 8080

CMD ["sh", "-c", "while true; do echo -e 'HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nHello World' | nc -l -p 8080; done"]