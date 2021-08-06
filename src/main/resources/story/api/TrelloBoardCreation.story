Description: Trello board creation;

Scenario: Trello board creation

Given request body: {
key:"02d4a3e93c946ee867439a842f89756f" ,
token:"c654dd0f05782f1ef12216287360537a202ea419f03f25fb0096b3e198d65ddb" ,
name:"new board 1"  }
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=02d4a3e93c946ee867439a842f89756f&token=c654dd0f05782f1ef12216287360537a202ea419f03f25fb0096b3e198d65ddb&name={new board 1}'
Then the response code is equal to '200'





