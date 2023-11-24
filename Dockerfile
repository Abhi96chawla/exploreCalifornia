From nginx:alpine

#WORKDIR exploreCalifornia
#COPY . /exploreCalifornia
COPY . /usr/share/nginx/html/

EXPOSE 80
