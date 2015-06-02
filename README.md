## react-native-env

Access the iOS environment from React Native.

### Installation

1. `npm install react-native-env`
2. In XCode's "Project navigator", right click on project's name ➜ `Add Files to <...>`
3. Go to `node_modules` ➜ `react-native-env` ➜ add `RNEnvironmentManagerIOS` folder
4. Add environment variable(s) to your XCode scheme(s) (see screenshot below)
4. Compile and have some environment

![screenshot_6_1_15__10_17_pm](https://cloud.githubusercontent.com/assets/54157/7927305/32e65e24-08ac-11e5-9837-9801611fda2f.png)


### Usage

```javascript
var EnvironmentManager = require('react-native-env');

// read an environment variable from React Native
EnvironmentManager.get('SOME_VARIABLE', function(err, res) {
  console.log('name: '+res); // => SOME_VARIABLE: ooooh fun!
});

```

### Roadmap

- Not sure, what do we need?

PR's welcome!
