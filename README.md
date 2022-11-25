<h1 align="center">某専門学校の非公式学生アプリ</h1>

## 🚀 Project Structure

```
lib/
├── constants
├── helpers
│   ├── extensions
│   └── utils
├── models
│   └── user
├── providers
├── routes
├── services
│   ├── local_storage
│   ├── networking
│   └── repositories
└── views
    ├── screens
    └── widgets
```

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command      | Action                  |
| :----------- | :---------------------- |
| `make setup` | Project setup           |
| `make get`   | Install packages        |
| `make run`   | Starts local dev app    |
| `make gen`   | Related file generation |

## 📦️ Related Repositories

- [Web Frontend]("https://github.com/RuiOkazaki/eccSchoolApp-web")
- [Api Server]("https://github.com/yumekiti/eccSchoolApp-api")

## ✨ App Features

- Authentication.

## 🔧 Technical Features

<table>
    <tr>
        <td><a href="https://pub.dev/packages/riverpod">Riverpod</a> State Management</td>
        <td><a href="https://pub.dev/packages/dio">Dio</a> Fetch Client</td>
    </tr>
    <tr>
        <td><a href="https://pub.dev/packages/freezed">Freezed</a> + <a href="https://pub.dev/packages/flutter_hooks">Flutter Hooks</a> For JSON Handling</td>
        <td>Custom Wrapper For <a href="https://pub.dev/packages/shared_preferences">Shared Prefs</a> + <a href="https://pub.dev/packages/flutter_secure_storage">Flutter Secure Storage</a></td>
    </tr>
    <tr>
        <td>MVC-S Clean Architecture</td>
        <td>Dart ENV variables</td>
    </tr>
    <tr>
        <td>Reusable services architecture and code</td>
        <td>Custom reusable widgets</td>
    </tr>
    <tr>
        <td>Issue Driven Development</td>
        <td></td>
    </tr>
</table>
