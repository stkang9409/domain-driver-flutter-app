# domain-driver-flutter-app

This is a Flutter application that implements the Domain-Driven Design (DDD) architecture.

Directory Structure

- main.dart: contains the main function for the application

bootstrapping dir has the following structure:

- bootstrap.dart: contains the bootstrap code for the application

shared dir has the following structure:

- domain: contains the value objects and events
- infrastructure: contains the services and repositories
- presentation: contains the UI, state management, and navigation

contexts dir has the following structure:

- application: contains the use cases
- domain: contains the entities, value objects, and repositories
- infrastructure: contains the services and repositories
- presentation: contains the UI, state management, and navigation

Communication between contexts:

use event bus to communicate between contexts

event handler implementation is in the integration dir

app.dart is the entry point of the application and handle subscription to event bus, every integration should be registered in app.dart

## Identity Context

### Description

identity context is responsible for managing user identity and authentication.

## Notification Context

### Description

notification context is responsible for managing notifications and push notifications.

### Features

- Send notification
- Receive notification

## Referral Context

### Description

referral context is responsible for managing referrals and rewards.

### Features

- Create referral
- Accept referral
