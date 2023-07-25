# Sisimai API
Provides an API for using Sisimai to parse RFC5322 bounce emails into structured data.


## Usage
1. Run with docker
```
docker run -p 3000:3000 carahsoftech/sisimai-api
```
2. Post one or more emails to http://localhost:3000/parse, which will return a json array of results. Refer to https://libsisimai.org/en/data/ for field details.
