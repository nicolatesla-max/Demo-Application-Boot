# Creating a Base Image Containing Java Runtime
FROM java:8-jdk-alpine

# Add Maintainer Info
LABEL author.name="Ravindra Nallamothu" \
      author.email="ravindra_nallamothu@persistent.com" \
      version="$VERSION" \
      vendor="RNP" \
      description="Demo Application"
      
# Copy jar file to specified folder in Base Image
COPY ./target/SpringBooot-HelloWorld-0.0.1-SNAPSHOT.jar /usr/app/

# Default Working Directory
WORKDIR /usr/app/

# Executing Shell Command....Touching the jar file
RUN sh -c 'touch SpringBooot-HelloWorld-0.0.1-SNAPSHOT.jar'

# Instructing Docker to execute our application
ENTRYPOINT ["java","-jar","SpringBooot-HelloWorld-0.0.1-SNAPSHOT.jar"]
