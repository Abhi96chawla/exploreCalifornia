From nginx:alpine

COPY exploreCalifornia /exploreCalifornia
COPY exploreCalifornia/ /usr/share/nginx/html/

EXPOSE 80