---
layout: default
---
## Fetching the weather data

The directions are going to start getting a bit more sparse! Ask questions if you need help.

In this step, we want to:

1. When a user clicks 'Go', not only should the zipcode be stored on the state, but our application should send a request to Wunderground for the current weather data for that zipcode.  I enjoy using `axios` to make API requests (AJAX request) but you may also use `fetch`! Both will return a promise for the data in object form.
2. Once we get the data, choose what data you want to render out on the screen. Store that data as an object in `<App />`'s state.
3. To check that your state is correct you can a) render out some data in <App />, b) console.log parts of your state in your render method, or c) download and install the [React DevTools](https://github.com/facebook/react-devtools) extension (Chrome or Firefox) to inspect your component's state.

When you are sure that you are updating your state appropriately, [move on](render-weather) to rendering your data!

_Mini bonus: If you'd like your application to start with a zipcode already on the state, you can use the lifecycle hook `componentDidMount` to fetch any initial data with a default zipcode._
