---
layout: default
---

## Forms - Getting the Zip Code

Now we can truly get started. Before we can show any weather, we need to get information from the user. And that means... we need a form!

Or at least we need an input tag that the user can insert data into. This is a GREAT time to think about the structure of our application. We _could_ put all of our React code into `App.jsx`, but that defeats the purpose of our module system AND of React.js itself. A large part of React's power comes from the ability to create small, reusable, composable components.

So instead of rendering your `<input />` tag in App.jsx, make a new component (let's call it 'ZipForm.jsx'), and render it there. My jsx looks something like this:

```
<div id="zip-form">
  <input placeholder='Enter your Zip Code' />
  <button>Go</button>
</div>

```

Now, we want to capture the zip code from the user and put it on our state when the user presses 'GO'. But now we have a decision to make--which component should hold our state? Should `ZipForm` keep track of its own state, or should it's parent, `<App />` hold all the state?

The answer to this question is going to depend on the shape of your application. For this application, we need to ask the following question: Where is the zip code going to be used?  We want to use the zip code to gather weather information from the Wunderground API, and then render that information in a component. Most likely, that component will be a _sibling_ of `<ZipForm />` and a _child_ of `<App />`.

```
          <App />
        /        \
  <ZipForm />  <WeatherData />
```

Since React.js can only pass data in _one_ direction, from parent to child, it makes sense that `<App />` would become a stateful component, and hold the zipcode for us.

So here are your tasks:

1. Convert `<App />` into a stateful Class component
2. Write a constructor that creates the initial state.
3. Write a method that takes a zipcode, and updates the state with that zipcode. Don't forget to bind this method to the App class!
4. Pass this new method as a prop to `<ZipForm />`
5. Inside `<ZipForm />` add a click handler that will call the passed down method when a user presses 'Go', and pass the zipcode as an argument. You might be wondering, how do we get the content of the form out?? Callbacks given to `onClick` will be automatically passed an `event` object as an argument. On this `event` object there will be a `target.value` property which will be the user input. Don't forget to run `event.preventDefault()`! This will prevent the default HTML 5 form behavior.

If all goes well, you should be able to update your state whenever you type in a zipcode and press 'Go'! To test it, render out the contents of `this.state.zipcode` somewhere in `<App />`

Go to the [next](wunderground) section, setting up your WunderGround API key.

