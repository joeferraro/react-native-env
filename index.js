var NativeModules = require('NativeModules');
var RNEnvironmentManagerIOS = NativeModules.RNEnvironmentManagerIOS;

module.exports = {
  get(name, callback) {
    RNEnvironmentManagerIOS.get(name, (err, res) => {
      callback(err, res);
    });
  }
}
