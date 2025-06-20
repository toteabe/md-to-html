Docker image that uses pandoc to convert md files to html.

https://hub.docker.com/r/toteabe/md-to-html

--Usage--

Run: docker run -v $(pwd)/markdown:/markdown-data toteabe/md-to-html

Output html: $(pwd)/markdown/output/