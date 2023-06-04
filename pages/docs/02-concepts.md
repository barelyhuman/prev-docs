# Concepts

This will contain a basic introduction to what concepts are used in prev, also refrence to pre-built tech (like preact) used in prev.

## Feature Set

- Routing is inbuilt through the pages directory, similar to Next JS
- Components become reactive when the extension is **.island.js** or with a first line comment of `//@island` on the component
- Every page (file in `pages/` directory) can define how to handle both frontend and backend logic.
- Highly expandable and customisable using plugins.

The entire conepts can be summarised into two parts (Like any web project), Frontend and the Backend.

Frontend is all about understanding preact since we are using the islands to make our Frontend componenets reactive (Interactable)

Backend is being managed natively by prev.

## Core Concepts

There are three major factors in prev, **Builder**, **Plugins** and . Where the builder performs the task of actually building the Server and the Client. Plugins are used to alter the base workflow of prev and .

## File structure

### prev //TODO

### src

- pages: The file structure followed in the pages will inherently handle routing, for example. /pages/test.js page can be accessed using localhost:{port}/test. Pages itself has a few important things to notice

  - +{filename.js}: This page will directly provide the id from the URL into the req.params and it happens in realtime. For example

Let's consider the file structure to look like this

```shell
➜  pages tree
.
├── +test.js
└── hello.js
```

If prev is running on locahost:3000, then the request localhost:3000/hello will be handled by hello.js But when **localhost:3000/4** (or anything other than the file present in the current directory). +test.js will handle the request and "4" can be accessed directly by the function present in the +test.js file. under the `params` value of the request
