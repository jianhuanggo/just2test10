# Use the AWS Lambda Python base image
FROM public.ecr.aws/lambda/python:3.9

# Set the working directory
WORKDIR /var/task

# Copy the Python script into the container
COPY . .
RUN pip install -r requirements.txt
# Set the CMD to your handler function
ENTRYPOINT ["/lambda-entrypoint.sh", "lambda_function.handler"]

