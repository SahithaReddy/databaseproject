FROM python

WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt .

ENV DB_URL=mysql://admin:Sahitha123@mysql-database1.ccb5th4uvxdi.ap-south-1.rds.amazonaws.com/aws
#this runs when image is built
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "python" ,"app.py" ]
