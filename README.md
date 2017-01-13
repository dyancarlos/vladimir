# Vladimir
Vladimir is a simple mock service for JSON files.

# Instructions
* All your mock files must be placed on the directory **endpoints_files** with the extension **.json**;
* The **config/endpoints.yml** is the endpoint configuration file.

# Example
*config/endpoints.yml*
```
# endpoint name
# http://localhost:9292/mock/example
example:
  file: example.json # endpoints_files/example.json
```

# How to Use
1. Clone project from https://github.com/dyancarlos/vladimir.git
2. Inside the project run `bundle install` to install the dependencies
3. After this, to start the app run `rackup`
4. Now the app will be running on 'http://localhost:9292'
5. Try accessing 'http://localhost:9292/mock/example'

# License
Copyright 2017 Dyan Carlos Carra

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
