WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install -g @angular/cli
EXPOSE 4200
ENV NAME my-app
CMD ["ng", "serve", "--host", "0.0.0.0"]
