FROM centos:7

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

yum install vim python3 pip3 espeak espeak-ng alsa-utils -y

# Install pyttsx3 and any other dependencies you may need
RUN pip install pyttsx3

# Run the Python script
CMD ["python", "hello_audio.py"]