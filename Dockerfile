FROM ruby
RUN gem install jekyll bundler
RUN gem install jekyll-paginate jekyll-sitemap
RUN apt-get update -y
RUN apt-get install nginx -y
RUN mkdir /app
RUN mkdir /nginx
ADD ./ /app/
RUN mv /app/monochrome-master/ /app/jekyll/
ADD ./docker-run.sh /app/
ADD ./nginx.conf /app/
RUN chmod +x /app/docker-run.sh
ADD ./monochrome-master/static /app/static
ENTRYPOINT /app/docker-run.sh