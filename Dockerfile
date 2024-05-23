# Use the official Ruby base image
FROM ruby:latest

# Install dependencies for zless
RUN apt-get update && \
    apt-get install -y less gzip && \
    rm -rf /var/lib/apt/lists/*

RUN gem install lmdb

# Copy the rest of your application code into the image
COPY . .

# Expose the port your app runs on (adjust if necessary)
EXPOSE 4567

# Command to run your application (adjust if necessary)
CMD ["ruby", "dbsnp"]