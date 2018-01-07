---
layout: default
---

## Getting Started

First thing, **fork** this repository (https://github.com/kmacpher/weather-checker-impact) to your own Github account.

In your terminal run:

```
$ git clone https://github.com/YOUR_USERNAME/weather-checker-impact
$ cd weather-checker-impact
$ npm install
```

This will create a local copy of your forked repository on your machine and install any dependencies. For us, that's React and Webpack!

To check to make sure everything is ready to go, run:

```
$ npm run build
$ open index.html
```

`npm run build` is going to run webpack and ask it to watch your directory for any changes in code. Each time you save a change, webpack will rebuild your code and put the output into `public/bundle.js`. Take a look at your bundle to see what all is in there!  Look in your `package.json` file to see the command that `npm run build` is executing.

If you don't have any errors, you should see a light blue screen with 'Hello World!' text.  If you don't see this, run through the setup directions again or ask for help.

_Note: There is already CSS in the project that will help you build a polished product. As you go through the workshop, much of the JSX will be given to you, so that the CSS styles are properly applied. However, I encourage you to be creative! You may change anything given in the codebase to suit your creative desires._

When everything is working, go to the [next](zip-code) section, getting the zip code.
