## react-native-env

Access the iOS environment from React Native.

### Installation

1. `npm install react-native-env`
2. In XCode's "Project navigator", right click on project's name ➜ `Add Files to <...>`
3. Go to `node_modules` ➜ `react-native-env` ➜ add `RNEnvironmentManagerIOS` folder
4. Add an `environment.plist` to your project containing any key-values to be accessed at runtime.
5. Compile and have some environment

### Per-environment Config

Follow the excellent, long tutorial [Migrating iOS App Through Multiple Environments](http://www.blackdogfoundry.com/blog/migrating-ios-app-through-multiple-environments/) to derive `environment.plist` at build-time, based on the selected Xcode scheme.

### Usage

```javascript
var EnvironmentManager = require('react-native-env');

// read an environment variable from React Native
EnvironmentManager.get('SOME_VARIABLE')
  .then((val) => {
    console.log('value of SOME_VARIABLE is: ', val); // => value of SOME_VARIABLE is: MY_VALUE
  })
  .catch((err) => {
    console.error('womp womp: ', err.message);
  });

// Read an environment variable synchronously.
// Downside of this approach is that if environment.plist
// changes during runtime, those changes will not be reflected
// by getSync.
var val = EnvironmentManager.getSync('SOME_VARIABLE');
console.log('value of SOME_VARIABLE is: ', val);
```

### Roadmap

- Not sure, what do we need?

PR's welcome!
