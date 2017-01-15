# Vladimir
Vladimir is a simple mock service for JSON files. No database needed.

## Instructions
* All your mock files must be placed on the directory **endpoints_files** with the extension **.json**;
* The **config/endpoints.yml** is the endpoint configuration file.

## Example
*config/endpoints.yml*
```
# endpoint name
# http://localhost:9292/mock/example
example:
  file: example.json # endpoints_files/example.json
```

## How to Use
1. Clone project from https://github.com/dyancarlos/vladimir.git
2. Inside the project run `bundle install` to install the dependencies
3. After this, to start the app run `rackup`
4. Now the app will be running on `http://localhost:9292`
5. Try accessing `http://localhost:9292/mock/example`

## Contribute
Contribute to this project! Just fork it :)
