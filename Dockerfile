FROM arm32v6/python:3.5.3-alpine3.9


# All source files will go into /src.
RUN mkdir -p /src
WORKDIR /src

# Install Python Packages with pipenv.
COPY Pipfile Pipfile.lock ./
RUN pip install pipenv && pipenv install --system

# Copy the source code.
COPY ./ .

# Run the program
RUN pipenv run python3.5 helloworld.py
