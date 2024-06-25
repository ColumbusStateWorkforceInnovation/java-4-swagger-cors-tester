# CORS Testing App
This application uses [swagger-ui-react](https://github.com/swagger-api/swagger-ui/tree/master/flavors/swagger-ui-react) to run Swagger UI in a separate frontend server in order to test the CORS configuration of an application. 

It assumes:
* that the application under test is using OpenAPI and Swagger
* you have Node installed (see `.nvmrc` for the needed version). It is recommended to to [nvm](https://github.com/nvm-sh/nvm) to manage and install the correct version of Node. Once you have [installed](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating) it, run `nvm use` and it will install the version of Node in the `.nvmrc` file.

## Running the App
1. Pass the `REACT_APP_API_URL` eivnronment variable to indicate where the OpenAPI spec file is. The default location is set to `http://localhost:8080/v3/api-docs`.

## As a Standalone Application
2. Follow the instructions below for running the React app, but typically this involves `npm install`, then `npm start`.
3. A browser should open to http://localhost:3000 .

## Using Docker
1. Build the Dockerfile: `docker build . -t cors-tester:dev`
2. Run it via `docker run -e REACT_APP_API_URL=<url here> cors-tester:dev`

If CORS has been configured correctly in the app then Swagger UI should load without any issues and you can start executing requests (which should also succeed without CORS errors).

# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)
