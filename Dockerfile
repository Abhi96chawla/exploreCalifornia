From nginx:alpine

MKDIR exploreCalifornia

COPY . /exploreCalifornia
COPY exploreCalifornia/ /usr/share/nginx/html/

EXPOSE 80