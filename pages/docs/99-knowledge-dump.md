Things to add and mention in the docs

# Pre-setup functionality and it's documentation

- Special Folders (`pages`)

  - how to define/change the special folder

- Short explanation of island and how to write them

  - add in the limitations of using islands and where to report issues with regards to them

- Evaluation flow and digram of how things are evaluated

# Extending using Plugins

- Define and explain the different functions from a plugin
- show a live added example with regards to creating a plugin, a simple one is probably
  adding something to the head of the HTML dynamically
- also write notes on how and what transformers to use to avoid slowing down the
  initial run of the codebase

# Security

- A lot of the server code is hidden behind the prev abstraction and this could add in issues when writing for a fully contained and secure backend http server. For this to be easy to work with, either add in hooks or backend plugins or expose a `router.js` special file, this is under thought so for now anything related to security should be explained with the existing file router in mind.

# Hacking into the codebase

- Explain `prev`'s own structure and build tooling
- Define what module is responsible for which feature
- How to write your own interfaces for the basic building blocks like kernel, router, etc
