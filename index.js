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
  },

  getAll() {
    return new Promise((resolve, reject) => {
      RNEnvironmentManagerIOS.getAll((err, res) => {
        if (err) {
          reject(err);
        } else {
          resolve(res);
        }
      });
    });
  },

  getSync(name) {
    if (!RNEnvironmentManagerIOS[name]) console.error('Could not get env var', name, '. Has it been defined in environment.plist?');
    return RNEnvironmentManagerIOS[name];
  }
}
