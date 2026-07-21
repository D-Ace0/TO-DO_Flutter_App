# To-Do Flutter App

An offline Flutter task manager with persistent local storage using Hive.

## Features

- Create tasks from a dialog
- Mark tasks complete or incomplete
- Delete tasks with a swipe action
- Persist the task list locally between launches
- Seed initial tasks on first use
- Simple Material Design interface

## How it works

`ToDoDatabase` stores task entries in a Hive box named `mybox` under the `TODOLIST` key. Each task contains a title and completion flag. The home page reloads existing data at startup and writes changes after creation, completion, or deletion.

## Project structure

```text
lib/
├── data/
│   └── database.dart
├── pages/
│   └── home_page.dart
├── utils/
│   ├── dialog_box.dart
│   ├── my_button.dart
│   └── todo_tile.dart
└── main.dart
```

## Tech stack

- Flutter and Dart
- Hive / Hive Flutter
- Flutter Slidable
- Material Design

## Getting started

```bash
git clone https://github.com/D-Ace0/TO-DO_Flutter_App.git
cd TO-DO_Flutter_App
flutter pub get
flutter run
```

## Current scope

This is a local, single-device task manager. Cloud synchronization, accounts, reminders, categories, deadlines, and usage/crash analytics are not implemented.

