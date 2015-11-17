var NativeModules = require('react-native').NativeModules;
var RNEnvironmentManagerIOS = NativeModules.RNEnvironmentManagerIOS;

module.exports = {
  get(name) {
    return new Promise((resolve, reject) => {
      RNEnvironmentManagerIOS.get(name, (err, res) => {
        if (err) {
          reject(err);
        } else {
          resolve(res);
        }
      });
    });
  }
}
