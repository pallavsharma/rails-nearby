# README

* Ruby version
    ruby 2.5.1p57 

* Database creation
  Setup DB

    `rake db:setup`

  To Create Seed Data

    `rake db:seed`


* To Run Server 

    `rails s -p 3001`

* To Find users in a range
    method: GET
    api_endpoint: 

      `http://localhost:3001/search/nearby?radius=10&lat=0.660695891084657e0&lng=-0.677379407923231e2`

    Response:
      status: 200 OK
      body:

      ```ruby
        [
            {
                "id": 100,
                "name": "Andreas Rath",
                "lat": "0.660695891084657",
                "lng": "-67.7379407923231",
                "created_at": "2020-07-10T08:37:24.930Z",
                "updated_at": "2020-07-10T08:37:24.930Z"
            }
        ]
      ```

* To create Bulk Users
    method: POST
    api_endpoint: 

      `http://localhost:3001/users/bulk_create`

    send json form data in the following format:

      ```ruby
      {
           "data": [
          {
              "name": "Andreas Rath",
              "lat": "0.660695891084657",
              "lng": "-67.7379407923231"
          },
          {
              "name": "Florencio Stamm",
              "lat": "-4.91792500506651",
              "lng": "-68.0443596959857"
          },
          {
              "name": "Deeann Ortiz",
              "lat": "-1.5027622940253",
              "lng": "-59.4819608983856"
          }
        ]
      }
      ```

      Response:
        status: 200 OK
        body:

          ```ruby
          {
              "success": [
                  {
                      "id": 20186,
                      "name": "Andreas Rath",
                      "lat": "0.660695891084657",
                      "lng": "-67.7379407923231",
                      "created_at": "2020-07-10T10:11:46.213Z",
                      "updated_at": "2020-07-10T10:11:46.213Z"
                  },
                  {
                      "id": 20187,
                      "name": "Florencio Stamm",
                      "lat": "-4.91792500506651",
                      "lng": "-68.0443596959857",
                      "created_at": "2020-07-10T10:11:46.222Z",
                      "updated_at": "2020-07-10T10:11:46.222Z"
                  },
                  {
                      "id": 20188,
                      "name": "Deeann Ortiz",
                      "lat": "-1.5027622940253",
                      "lng": "-59.4819608983856",
                      "created_at": "2020-07-10T10:11:46.225Z",
                      "updated_at": "2020-07-10T10:11:46.225Z"
                  }
              ],
              "errors": []
          }
          ```
