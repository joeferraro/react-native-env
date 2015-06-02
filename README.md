## react-native-env

Access the iOS environment from React Native.

### Installation

1. `npm install react-native-env`
2. In the XCode's "Project navigator", right click on project's name ➜ `Add Files to <...>`
3. Go to `node_modules` ➜ `react-native-env` ➜ add `RNEnvironmentManagerIOS` folder
4. Add environment variables to your XCode scheme(s) (see screenshot below)
4. Compile and have some environment

### Usage

```javascript
var EnvironmentManager = require('react-native-env');

// set a cookie
EnvironmentManager.get('SOME_VARIABLE', function(err, res) {
  console.log('name: '+res); // => SOME_VARIABLE: something_fun
});

```

### Roadmap

- Not sure, what do we need?

PR's welcome!
