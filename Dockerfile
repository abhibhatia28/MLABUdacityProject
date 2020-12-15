FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY . /app/ 
#COPY model_data /app/
## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN make install
#RUN pip install --upgrade pip &&\
#pip install Click &&\
#pip install Flask &&\
#pip install itsdangerous &&\
#pip install Jinja2 &&\
#pip install MarkupSafe &&\
#pip install numpy &&\
#pip install pandas &&\
#pip install python-dateutil &&\
#pip install pytz &&\
#pip install scikit-learn==0.20.2 &&\
#pip install scipy &&\
#pip install six &&\
#pip install Werkzeug &&\
#pip install pylint
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
