From nginx:alpine

mkdir exploreCalifornia

COPY . /exploreCalifornia
COPY exploreCalifornia/ /usr/share/nginx/html/

EXPOSE 80
