# Example APP - Hello Weshnet Expo

This is a simple example of a Weshnet Expo Module application.

## Requirements

- [Go](https://golang.org/doc/install) >= 1.19.7

## How this app was created:

### 1. Generating ios and android folders

```bash
$ npx expo prebuild
```

### 2. Adding Weshnet Expo Module

From npm:

```bash
$ npm install --save weshnet-expo
```

From local registry:

```bash
$ npm install --save weshnet-expo --registry http://localhost:4873
```

### 3. pod install

```bash
$ cd ios
$ pod install
```

### 4. Running the app on a device

Since native modules doesn't work on the Expo Go, you need to run the app as a [standalone app](https://docs.expo.dev/modules/use-standalone-expo-module-in-your-project/):

```bash
$  npx expo run:[ios|android] --device
```
