---
layout: default
---

## Exploring the Wunderground API

Before we can fetch weather data, we need to set up an account with wunderground. Head to [https://wunderground.com](https://wunderground.com) and make yourself an account.

Once you've signed up, your can access your developer dashboard by clicking on **More** and selecting 'Weather API for Developers' from the dropdown.

Next, you'll need to create a project. Name it whatever you'd like--mine is named 'Weather application'. This will generate a unique key for you to use with their API.

Copy this key, and create a variable in your App.jsx file that holds your key so you can easily access it.

_Note: Generally, you don't want to have your key stored in your front end code! This is because ANYTHING on the front-end application is public. Anyone can view the source code of your application. If you need an API key to be secure, you must store it in your back end application or database. In our case, our key doesn't represent any private information, so it should be ok._

Try out your key by using the browser to send a request to the Wunderground API. Copy and paste `http://api.wunderground.com/api/YOUR_API_KEY/conditions/q/10004.json` into your browser URL bar. You should see some JSON information about the current weather in the zip code 10004!.

Now we're ready to make the API call from our React application. Click [here](fetch-data) to continue.
